/**********************************************************************************************************************************************************
Class Name: NZCAnnualEmissionInventoryBatchDelete
Created By: Pranav Vibhandik
Created on: 28-May-2024 
Description: This class implements the Database.Batchable interface and handles the batch processing.

***********************************************************************************************************************************************************/

public class NZCAnnualEmissionInventoryBatchDelete implements Database.Batchable<sObject> {

    public final String query;
    private NZCAnnualEmissionInventoryArchDelLogic archDelLogic;

    // Constructor takes query as string input
    public NZCAnnualEmissionInventoryBatchDelete(String query) {
        this.query = query;
        this.archDelLogic = new NZCAnnualEmissionInventoryArchDelLogic();
    }

    // Retrieves query result
    public Database.QueryLocator start(Database.BatchableContext cc) {
        return Database.getQueryLocator(query);
    }

    public void execute(Database.BatchableContext cc, List<AnnualEmssnInventory> inventoryList) {
        if (!inventoryList.isEmpty()) {
            try {
                // Check for locked parent records and other associated parent records
                /* Assigns the result of 'filterLockedRecords' method to the 'unlockedRecords' which is done to filter out the records that are
                 locked and proceed with unlocked records*/
                List<AnnualEmssnInventory> unlockedRecords = archDelLogic.filterLockedRecords(inventoryList);

                if (!unlockedRecords.isEmpty()) {
                    // 1. Delete child records
                    archDelLogic.deleteChildObjects(unlockedRecords);

                    // 2. Delete the Annual Emission Inventory records
                    archDelLogic.deleteRecords(unlockedRecords);
                }
            } catch (Exception e) {
                System.debug('Error is: ' + e.getMessage());
                NZCErrorLog.logError(e.getMessage());
            }
        }
    }

    public void finish(Database.BatchableContext cc) {
       
    }
}