/**********************************************************************************************************************************************************
Class Name: NZCUpdateStationaryAssetBatch
Created By: Chetan Jogi
Created on: 14-June-2024 
Description: This class is use to Update the stationary asset environmental source with sum of all its Stationary 
Asset Energy use duration for actual and estimates falling between specified year for Electricity, Diesel and Natural Gas Fuel Type and refer this class in 
NZCUpdateStationaryAssetBatch

***********************************************************************************************************************************************************/

public without sharing class NZCUpdateStationaryAsset {
 
    // Method to process the scope, called from the execute method
    public static void UpdateStationaryAsset(List<StnryAssetEnvrSrc> scope) {
        // Get the year from custom metadata
        string yearString = [SELECT BEIYear__c FROM NZCBatchYearSettingBEI__mdt LIMIT 1].BEIYear__c;
        Integer year = integer.valueof(yearString);
        
        // Define the date range for the specified year.
        Date startDate = Date.newInstance(year, 1, 1);
        Date endDate = Date.newInstance(year, 12, 31);
        
        System.debug('Start date: ' + startDate);
        
        // Maps to hold summed durations by parent ID and fuel type
        Map<Id, Map<String, Decimal>> actualDataSums = new Map<Id, Map<String, Decimal>>();
        Map<Id, Map<String, Decimal>> systemGeneratedOrAccrualSums = new Map<Id, Map<String, Decimal>>();
 
        // Initialize the maps
        for (StnryAssetEnvrSrc asset : scope) {
            actualDataSums.put(asset.Id, new Map<String, Decimal>{'Electricity' => 0, 'Diesel' => 0, 'NaturalGas' => 0});
            systemGeneratedOrAccrualSums.put(asset.Id, new Map<String, Decimal>{'Electricity' => 0, 'Diesel' => 0, 'NaturalGas' => 0});
        }
 
        // Check CRUD permissions before performing SOQL query
        if (Schema.sObjectType.StnryAssetEnrgyUse.isAccessible()) {
            // Query related child records (StnryAssetEnrgyUse)
            List<StnryAssetEnrgyUse> energyUseRecords = [
                SELECT StnryAssetEnvrSrcId, FuelType, Energy_Use_Duration_Days__c,
                IsSystemGeneratedRecord, Accural_Data__c
                FROM StnryAssetEnrgyUse
                WHERE StnryAssetEnvrSrcId IN :scope
                AND StartDate >= :startDate
                AND EndDate <= :endDate
                AND StnryAssetCrbnFtprntId != null
                AND FuelType IN ('Electricity', 'Diesel', 'NaturalGas')
            ];
 
            // Declare variables at the top
            Id assetId;
            String fuelType;
            Decimal duration;
            Map<String, Decimal> sums;
 
            // Sum the durations based on the criteria
            for (StnryAssetEnrgyUse energyRecord : energyUseRecords) {
                assetId = energyRecord.StnryAssetEnvrSrcId;
                fuelType = energyRecord.FuelType;
                duration = energyRecord.Energy_Use_Duration_Days__c != null ? energyRecord.Energy_Use_Duration_Days__c : 0;
 
                System.debug('Processing record: ' + energyRecord);
                System.debug('Parent ID: ' + assetId);
                System.debug('Fuel Type: ' + fuelType);
                System.debug('Duration: ' + duration);
 
                // Summing durations for actual data (isSystemGenerated = false and accrual data = false)
                if (!energyRecord.IsSystemGeneratedRecord && !energyRecord.Accural_Data__c) {
                    sums = actualDataSums.get(assetId);
                    if (sums != null && sums.get(fuelType) != null) {
                        sums.put(fuelType, sums.get(fuelType) + duration);
                    }
                }
                // Summing durations for system generated or accrual data
                else if (energyRecord.IsSystemGeneratedRecord || energyRecord.Accural_Data__c) {
                    sums = systemGeneratedOrAccrualSums.get(assetId);
                    if (sums != null && sums.get(fuelType) != null) {
                        sums.put(fuelType, sums.get(fuelType) + duration);
                    }
                }
            }
 
            // Check CRUD permissions before performing DML operation
            if (Schema.sObjectType.StnryAssetEnvrSrc.isUpdateable()) {
                // List to hold parent records to update with the summed durations
                List<StnryAssetEnvrSrc> parentsToUpdate = new List<StnryAssetEnvrSrc>();
                for (Id stnryassetId : actualDataSums.keySet()) {
                    StnryAssetEnvrSrc parent = new StnryAssetEnvrSrc(
                        Id = stnryassetId,
                        Sum_Of_Electricity_Energy_Use_Duration__c = actualDataSums.get(stnryassetId).get('Electricity'),
                        Sum_Of_Diesel_Energy_Use_Duration__c = actualDataSums.get(stnryassetId).get('Diesel'),
                        Sum_Of_Natural_Gas_Energy_Use_Duration__c = actualDataSums.get(stnryassetId).get('NaturalGas'),
                        Sum_Of_SG_Electricity_Energy_UseDuration__c = systemGeneratedOrAccrualSums.get(stnryassetId).get('Electricity'),
                        Sum_Of_SG_Diesel_Energy_Use_Duration__c = systemGeneratedOrAccrualSums.get(stnryassetId).get('Diesel'),
                        Sum_Of_SG_NaturalGas_Energy_Use_Duration__c = systemGeneratedOrAccrualSums.get(stnryassetId).get('NaturalGas')
                    );
                    parentsToUpdate.add(parent);
                }
 
                // Update parent records in the database with the summed durations
                update parentsToUpdate;
 
                //System.debug('Updated parent records: ' + parentsToUpdate);
            } 
        }
    }
}