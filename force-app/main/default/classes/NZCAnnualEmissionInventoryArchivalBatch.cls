/**********************************************************************************************************************************************************
Class Name: NZCAnnualEmissionInventoryArchivalBatch
Created By: Pranav Vibhandik
Created on: 28-May-2024 
Description: This class implements the Schedulable interface and is responsible for scheduling and initiating the batch job that deletes 
eligible Annual Emission Inventory records.

***********************************************************************************************************************************************************/

global class NZCAnnualEmissionInventoryArchivalBatch implements Schedulable {
    
    global void execute(SchedulableContext sc) {
        
        // SOQL query to find Annual Emission Inventory records eligible for deletion and not locked
        String query = 'SELECT Id FROM AnnualEmssnInventory WHERE AEI_Data_Archival_Criteria_Check__c = true AND Exclude_from_Archival__c = false AND Status__c != \'Pending for Approval\' AND IsRecordLocked = false';
        if (Test.isRunningTest()) {
            query = 'SELECT Id FROM AnnualEmssnInventory WHERE AEI_Data_Archival_Criteria_Check__c = true AND Exclude_from_Archival__c = false AND Status__c != \'Pending for Approval\' AND IsRecordLocked = false LIMIT 10';
        }

        // Execute the batch job with the deletion logic
        Database.executeBatch(new NZCAnnualEmissionInventoryBatchDelete(query), 25);
    }
}