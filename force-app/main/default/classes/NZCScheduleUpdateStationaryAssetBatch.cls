/**********************************************************************************************************************************************************
Class Name: NZCScheduleUpdateStationaryAssetBatch
Created By: Chetan Jogi
Created on: 14-June-2024 
Description: This class implements the Schedulable interface to Update the stationary asset environmental source with sum of all its Stationary 
Asset Energy use duration for actual and estimates falling between specified year for Electricity, Diesel and Natural Gas Fuel Type

***********************************************************************************************************************************************************/
global class NZCScheduleUpdateStationaryAssetBatch implements Schedulable {
 
    global void execute(SchedulableContext sc) {
        String query = 'SELECT Id FROM StnryAssetEnvrSrc';
 
        if (Test.isRunningTest()) {
            // Adjust the query for test context if needed
            query = 'SELECT Id FROM StnryAssetEnvrSrc LIMIT 50';
        }
 
        Database.executeBatch(new NZCUpdateStationaryAssetBatch(query),50);
    }
}