/**********************************************************************************************************************************************************
Class Name: TestDataFactory
Created By: Pranav Vibhandik
Created on: 21-June-2024 
Description: Consolidates and simplifies the creation of consistent and reusable test data for Apex unit tests, 
enhancing test coverage and maintaining data integrity across test methods.

***********************************************************************************************************************************************************/

@isTest
public class TestDataFactory {

    public static AnnualEmssnInventory createAnnualEmssnInventory(String name, String year, Boolean excludeFromArchival, String status) {
        AnnualEmssnInventory aei = new AnnualEmssnInventory(
            Name = name,
            Year = year,
            Exclude_from_Archival__c = excludeFromArchival,
            Status__c = status
        );
        insert aei;
        return aei;
    }

    public static List<AnnualEmssnInventory> createAnnualEmssnInventories(Integer n, Boolean excludeFromArchival, String status) {
        List<AnnualEmssnInventory> aeis = new List<AnnualEmssnInventory>();
        for (Integer i = 0; i < n; i++) {
            aeis.add(new AnnualEmssnInventory(
                Name = 'Test AEI ' + i,
                Year = String.valueOf(2001 + i),
                Exclude_from_Archival__c = excludeFromArchival,
                Status__c = status
            ));
        }
        insert aeis;
        return aeis;
    }

    public static StnryAssetCrbnFtprnt createStnryAssetCrbnFtprnt(Id aeiId) {
        StnryAssetCrbnFtprnt sacf = new StnryAssetCrbnFtprnt(
            Name = 'Test Stationary Asset Carbon Footprint',
            FootprintStage = 'Emission Source Confirmation',
            AnnualEmssnInventoryId = aeiId
        );
        insert sacf;
        return sacf;
    }

    public static VehicleAssetCrbnFtprnt createVehicleAssetCrbnFtprnt(Id aeiId) {
        VehicleAssetCrbnFtprnt vacf = new VehicleAssetCrbnFtprnt(
            Name = 'Test Vehicle Asset Carbon Footprint',
            FootprintStage = 'External Audit',
            AnnualEmssnInventoryId = aeiId
        );
        insert vacf;
        return vacf;
    }

    public static Scope3CrbnFtprnt createScope3CrbnFtprnt(Id aeiId) {
        Scope3CrbnFtprnt scf = new Scope3CrbnFtprnt(
            Name = 'Test Scope 3 Carbon Footprint',
            FootprintStage = 'Internal Review',
            AnnualEmssnInventoryId = aeiId
        );
        insert scf;
        return scf;
    }

    public static WasteFootprint createWasteFootprint(Id aeiId) {
        WasteFootprint wfp = new WasteFootprint(
            Name = 'Test Waste Footprint',
            Scope3EmssnSrcId = '0pc3y000000KyjBAAS',
            AnnualEmssnInventoryId = aeiId
        );
        insert wfp;
        return wfp;
    }

    public static Scope3PcmtSummary createScope3PcmtSummary(Id scope3Id) {
        Scope3PcmtSummary s3ps = new Scope3PcmtSummary(
            Name = 'Test Scope 3 Procurement Summary',
            CalendarYear = '2024',
            CurrencyCode = 'USD',
            Scope3EmssnSrcId = '0pc3y000000KyjBAAS',
            Scope3CrbnFtprntId = scope3Id
        );
        insert s3ps;
        return s3ps;
    }

    public static void createRelatedRecords(Id aeiId) {
        createStnryAssetCrbnFtprnt(aeiId);
        createVehicleAssetCrbnFtprnt(aeiId);
        Scope3CrbnFtprnt scf = createScope3CrbnFtprnt(aeiId);
        createWasteFootprint(aeiId);
        createScope3PcmtSummary(scf.Id);
    }

    public static void lockRecord(Id recordId) {
        Approval.LockResult[] lrList = Approval.lock([SELECT Id FROM AnnualEmssnInventory WHERE Id = :recordId]);
        if (lrList != null && !lrList.isEmpty()) {
            for (Approval.LockResult lr : lrList) {
                System.assert(lr.isSuccess(), 'Record locking failed.');
            }
        }
    }

    public static void unlockRecord(Id recordId) {
        Approval.UnlockResult[] urList = Approval.unlock([SELECT Id FROM AnnualEmssnInventory WHERE Id = :recordId]);
        if (urList != null && !urList.isEmpty()) {
            for (Approval.UnlockResult ur : urList) {
                System.assert(ur.isSuccess(), 'Record unlocking failed.');
            }
        }
    }

    public static void lockStnryAssetCrbnFtprnt(Id recordId) {
        Approval.LockResult[] lrList = Approval.lock([SELECT Id FROM StnryAssetCrbnFtprnt WHERE Id = :recordId]);
        if (lrList != null && !lrList.isEmpty()) {
            for (Approval.LockResult lr : lrList) {
                System.assert(lr.isSuccess(), 'Record locking failed.');
            }
        }
    }

    public static void unlockStnryAssetCrbnFtprnt(Id recordId) {
        Approval.UnlockResult[] urList = Approval.unlock([SELECT Id FROM StnryAssetCrbnFtprnt WHERE Id = :recordId]);
        if (urList != null && !urList.isEmpty()) {
            for (Approval.UnlockResult ur : urList) {
                System.assert(ur.isSuccess(), 'Record unlocking failed.');
            }
        }
    }


    
    public static OtherEmssnFctrSet createOtherEmssnFctrSet(String name) {
        OtherEmssnFctrSet oefs = new OtherEmssnFctrSet(
            Name = name
        );
        insert oefs;
        return oefs;
    }
 
    public static List<OtherEmssnFctrSetItem> createOtherEmssnFctrSetItems(Id parentId) {
        List<OtherEmssnFctrSetItem> emissionsFactorSetItems = new List<OtherEmssnFctrSetItem>();
        
        emissionsFactorSetItems.add(new OtherEmssnFctrSetItem(
            ParentEmissionFactorId = parentId,
            FuelType = 'Diesel',
            CalorificValue = 10,
            CalorificValueUnit = 'KWH_PER_L',
            Ch4EmissionFactor = 0.1,
            Ch4EmissionFactorUnit = 'KG_PER_KWH',
            Co2EmissionFactor = 2.5,
            Co2EmissionFactorUnit = 'KG_PER_KWH',
            N2oEmissionFactor = 0.05,
            N2oEmissionFactorUnit = 'KG_PER_KWH'
        ));
        
        emissionsFactorSetItems.add(new OtherEmssnFctrSetItem(
            ParentEmissionFactorId = parentId,
            FuelType = 'NaturalGas',
            CalorificValue = 15,
            CalorificValueUnit = 'KWH_PER_L',
            Ch4EmissionFactor = 0.2,
            Ch4EmissionFactorUnit = 'KG_PER_KWH',
            Co2EmissionFactor = 1.8,
            Co2EmissionFactorUnit = 'KG_PER_KWH',
            N2oEmissionFactor = 0.03,
            N2oEmissionFactorUnit = 'KG_PER_KWH'
        ));
        
        emissionsFactorSetItems.add(new OtherEmssnFctrSetItem(
            ParentEmissionFactorId = parentId,
            FuelType = 'FuelOil',
            CalorificValue = 15,
            CalorificValueUnit = 'KWH_PER_L',
            Ch4EmissionFactor = 0.2,
            Ch4EmissionFactorUnit = 'KG_PER_KWH',
            Co2EmissionFactor = 1.8,
            Co2EmissionFactorUnit = 'KG_PER_KWH',
            N2oEmissionFactor = 0.03,
            N2oEmissionFactorUnit = 'KG_PER_KWH'
        ));
        insert emissionsFactorSetItems;
        return emissionsFactorSetItems;
    }
 
    public static List<StnryAssetEnvrSrc> createStnryAssetEnvrSrcs(Integer n, Id otherEmssnFctrSetId) {
        List<StnryAssetEnvrSrc> environmentSources = new List<StnryAssetEnvrSrc>();
        for (Integer i = 0; i < n; i++) {
            environmentSources.add(new StnryAssetEnvrSrc(
                Name = 'Environment Source ' + i,
                Status__c = 'Approved',
                Active__c = true,
                I_have_reviewed_all_fields_and_data__c = true,
                OtherEmssnFctrId = otherEmssnFctrSetId
            ));
        }
        insert environmentSources;
        return environmentSources;
    }
 
    public static void createStnryAssetEnrgyUses(List<StnryAssetEnvrSrc> environmentSources) {
        List<StnryAssetEnrgyUse> energyUseRecords = new List<StnryAssetEnrgyUse>();
        for (StnryAssetEnvrSrc source : environmentSources) {
            energyUseRecords.add(new StnryAssetEnrgyUse(
                StnryAssetEnvrSrcId = source.Id,
                Name = 'Test Energy use 1',
                FuelType = 'Electricity',
                FuelConsumption = 10,
                IsSystemGeneratedRecord = false,
                Accural_Data__c = false,
                I_have_reviewed_all_fields_and_data__c = true,
                StartDate = Date.newInstance(2022, 1, 1),
                EndDate = Date.newInstance(2022, 1, 10)
            ));
            energyUseRecords.add(new StnryAssetEnrgyUse(
                StnryAssetEnvrSrcId = source.Id,
                Name = 'Test Energy use 2',
                FuelType = 'Diesel',
                FuelConsumption = 5,
                IsSystemGeneratedRecord = true,
                Accural_Data__c = false,
                I_have_reviewed_all_fields_and_data__c = true,
                StartDate = Date.newInstance(2022, 2, 1),
                EndDate = Date.newInstance(2022, 2, 5)
            ));
            energyUseRecords.add(new StnryAssetEnrgyUse(
                StnryAssetEnvrSrcId = source.Id,
                Name = 'Test Energy use 3',
                FuelType = 'NaturalGas',
                FuelConsumption = 7,
                IsSystemGeneratedRecord = false,
                Accural_Data__c = true,
                I_have_reviewed_all_fields_and_data__c = true,
                StartDate = Date.newInstance(2022, 3, 1),
                EndDate = Date.newInstance(2022, 3, 7)
            ));
            
            // Add a record to trigger the catch block
            energyUseRecords.add(new StnryAssetEnrgyUse(
                StnryAssetEnvrSrcId = environmentSources[0].Id,
                Name = 'Test Energy use 4',
                FuelType = 'FuelOil',
                FuelConsumption = 10,
                IsSystemGeneratedRecord = false,
                Accural_Data__c = false,
                I_have_reviewed_all_fields_and_data__c = true,
                StartDate = Date.newInstance(2022, 1, 1),
                EndDate = Date.newInstance(2022, 1, 10)
            ));
        }
        insert energyUseRecords;
    }
}