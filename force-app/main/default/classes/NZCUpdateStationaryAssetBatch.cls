/**********************************************************************************************************************************************************
Class Name: NZCUpdateStationaryAssetBatch
Created By: Chetan Jogi
Created on: 14-June-2024 
Description: This class implements the batchable interface to Update the stationary asset environmental source with sum of all its Stationary 
Asset Energy use duration for actual and estimates falling between specified year for Electricity, Diesel and Natural Gas Fuel Type

***********************************************************************************************************************************************************/
global class NZCUpdateStationaryAssetBatch implements Database.Batchable<SObject>{
    private String query;
    
    public NZCUpdateStationaryAssetBatch(String query) {
        this.query = query;
    }
    
    global Database.QueryLocator start(Database.BatchableContext BC) {
        return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext BC, List<StnryAssetEnvrSrc> scope) {
        try {
            // Call the method to process the scope
            //System.debug('inside try');
            NZCUpdateStationaryAsset.UpdateStationaryAsset(scope);
        } catch (Exception e) {
            // Handle any errors that occur during processing
            System.debug('Exception in execute method: ' + e.getMessage());
            NZCErrorLog.logError(e.getMessage());
        }
    }
    
    global void finish(Database.BatchableContext BC) {
        
    }
    
}