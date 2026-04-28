/**********************************************************************************************************************************************************
Class Name: NZCAnnualEmissionInventoryArchDataTest
Created By: Pranav Vibhandik
Created on: 28-May-2024 
Description: Tests the AnnualEmissionInventoryArchivalBatch and AnnualEmissionInventoryBatchDelete batch class, ensuring it correctly deletes 
AnnualEmssnInventory records along with their related child records.

***********************************************************************************************************************************************************/

@isTest
public class NZCAnnualEmissionInventoryArchDataTest {

    @testSetup
    static void createTestData() {
        // Create multiple AEI records
        List<AnnualEmssnInventory> aeis = TestDataFactory.createAnnualEmssnInventories(20, false, 'Created');
        for (AnnualEmssnInventory aei : aeis) {
            TestDataFactory.createRelatedRecords(aei.Id);
        }

        // Lock one of the AEI records
        TestDataFactory.lockRecord(aeis[2].Id);

        // Lock a StnryAssetCrbnFtprnt record
        StnryAssetCrbnFtprnt sacf = [SELECT Id FROM StnryAssetCrbnFtprnt LIMIT 1];
        TestDataFactory.lockStnryAssetCrbnFtprnt(sacf.Id);
    }

    @isTest
    static void testExecuteMethod() {
        // Create a single test AEI record
        AnnualEmssnInventory aei = TestDataFactory.createAnnualEmssnInventory('Test AEI 4', '2000', false, 'Created');
        
        // Create related records
        TestDataFactory.createStnryAssetCrbnFtprnt(aei.Id);
        TestDataFactory.createVehicleAssetCrbnFtprnt(aei.Id);
        Scope3CrbnFtprnt scf = TestDataFactory.createScope3CrbnFtprnt(aei.Id);
        TestDataFactory.createWasteFootprint(aei.Id);
        Scope3PcmtSummary s3ps = TestDataFactory.createScope3PcmtSummary(scf.Id);

        // Call execute method
        NZCAnnualEmissionInventoryBatchDelete batch = new NZCAnnualEmissionInventoryBatchDelete('SELECT Id FROM AnnualEmssnInventory WHERE AEI_Data_Archival_Criteria_Check__c = true AND Exclude_from_Archival__c = false AND Status__c != \'Pending for Approval\' AND IsRecordLocked = false');
        Test.startTest();
        batch.execute(null, new List<AnnualEmssnInventory>{aei});
        Test.stopTest();

        // Assert that related records are deleted and AnnualEmssnInventory record is deleted
        System.assertEquals(0, [SELECT count() FROM StnryAssetCrbnFtprnt WHERE AnnualEmssnInventoryId = :aei.Id]);
        System.assertEquals(0, [SELECT count() FROM VehicleAssetCrbnFtprnt WHERE AnnualEmssnInventoryId = :aei.Id]);
        System.assertEquals(0, [SELECT count() FROM Scope3CrbnFtprnt WHERE AnnualEmssnInventoryId = :aei.Id]);
        System.assertEquals(0, [SELECT count() FROM WasteFootprint WHERE AnnualEmssnInventoryId = :aei.Id]);
        System.assertEquals(0, [SELECT count() FROM Scope3PcmtSummary WHERE Scope3CrbnFtprntId = :scf.Id]);
        System.assertEquals(0, [SELECT count() FROM AnnualEmssnInventory WHERE Id = :aei.Id]);
    }

    /*@isTest
    static void testLockedRecordHandling() {
        // Fetch a locked AEI record created in testSetup
        AnnualEmssnInventory lockedAei = [SELECT Id, Name FROM AnnualEmssnInventory WHERE Name = 'Test AEI 2' LIMIT 1];

        // Lock the record to ensure it's locked
        TestDataFactory.lockRecord(lockedAei.Id);

        // Call execute method
        NZCAnnualEmissionInventoryBatchDelete batch = new NZCAnnualEmissionInventoryBatchDelete('SELECT Id FROM AnnualEmssnInventory WHERE AEI_Data_Archival_Criteria_Check__c = true AND Exclude_from_Archival__c = false AND Status__c != \'Pending for Approval\' AND IsRecordLocked = false');
        Test.startTest();
        batch.execute(null, new List<AnnualEmssnInventory>{lockedAei});
        Test.stopTest();

        // Assert that the locked AEI record is not deleted
        System.assertNotEquals(0, [SELECT count() FROM AnnualEmssnInventory WHERE Id = :lockedAei.Id]);
    }

    @isTest
    static void testLockedStnryAssetCrbnFtprntHandling() {
        // Fetch a locked StnryAssetCrbnFtprnt record created in testSetup
        StnryAssetCrbnFtprnt lockedSacf = [SELECT Id FROM StnryAssetCrbnFtprnt LIMIT 1];

        // Call execute method
        NZCAnnualEmissionInventoryBatchDelete batch = new NZCAnnualEmissionInventoryBatchDelete('SELECT Id, IsRecordLocked FROM AnnualEmssnInventory WHERE AEI_Data_Archival_Criteria_Check__c = true AND Exclude_from_Archival__c = false AND Status__c != \'Pending for Approval\' AND IsRecordLocked = false');
        Test.startTest();
        batch.execute(null, new List<AnnualEmssnInventory>{[SELECT Id FROM AnnualEmssnInventory LIMIT 1]});
        Test.stopTest();

        // Assert that the locked StnryAssetCrbnFtprnt record is not deleted
        System.assertNotEquals(0, [SELECT count() FROM StnryAssetCrbnFtprnt WHERE Id = :lockedSacf.Id]);
    }*/

    @isTest
    public static void testBatchJob() {
        Test.startTest();
        NZCAnnualEmissionInventoryBatchDelete batch = new NZCAnnualEmissionInventoryBatchDelete('SELECT Id, IsRecordLocked FROM AnnualEmssnInventory WHERE AEI_Data_Archival_Criteria_Check__c = true AND Exclude_from_Archival__c = false AND Status__c != \'Pending for Approval\' AND IsRecordLocked = false');
        Database.QueryLocator queryLocator = batch.start(null);

        // Assert that queryLocator is not null and returns records
        System.assertNotEquals(null, queryLocator, 'QueryLocator should not be null');

        // Enqueue the batch job and get the job ID
        String sch = '0 0 8 13 2 ?';
        String jobId = System.schedule('Test my class', sch , new NZCAnnualEmissionInventoryArchivalBatch());

        // Assert that the batch job has been queued successfully
        System.assertNotEquals(null, jobId, 'Batch job should have been queued');

        Test.stopTest();
    }
}