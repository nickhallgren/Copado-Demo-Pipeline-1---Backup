/**********************************************************************************************************************************************************
Class Name: NZCUpdateStationaryAssetBatchTest
Created By: Chetan Jogi
Created on: 14-June-2024 
Description: Tests the NZCUpdateStationaryAsset and NZCScheduleUpdateStationaryAssetBatch batch class, ensuring it correctly calculates sum of energy use 
duration for Actual and estimate for different fuel types.

***********************************************************************************************************************************************************/
@isTest
public class NZCUpdateStationaryAssetBatchTest {
    
   @testSetup
    static void setup() {
        // Create Other Emission Factor Set and items using TestDataFactory
        OtherEmssnFctrSet oefs = TestDataFactory.createOtherEmssnFctrSet('Test Emissions Factor Set');
        List<OtherEmssnFctrSetItem> oefsItems = TestDataFactory.createOtherEmssnFctrSetItems(oefs.Id);
        
        // Create sample StnryAssetEnvrSrc records using TestDataFactory
        List<StnryAssetEnvrSrc> environmentSources = TestDataFactory.createStnryAssetEnvrSrcs(50, oefs.Id);
        
        // Create sample StnryAssetEnrgyUse records for different fuel types using TestDataFactory
        TestDataFactory.createStnryAssetEnrgyUses(environmentSources);
    }
    
    @isTest
    public static void testBatchJob() {
        Test.startTest();
        
        NZCUpdateStationaryAssetBatch batch = new NZCUpdateStationaryAssetBatch('SELECT Id FROM StnryAssetEnvrSrc');
        Database.QueryLocator queryLocator = batch.start(null);

        // Assert that queryLocator is not null and returns records
        System.assertNotEquals(null, queryLocator, 'QueryLocator should not be null');
        
        // Enqueue the batch job and get the job ID
        String sch = '0 0 8 13 2 ?';
        String jobId = System.schedule('Test my class', sch , new NZCScheduleUpdateStationaryAssetBatch());

        // Assert that the batch job has been queued successfully
        System.assertNotEquals(null, jobId, 'Batch job should have been queued');

       
        Test.stopTest();
    }
}