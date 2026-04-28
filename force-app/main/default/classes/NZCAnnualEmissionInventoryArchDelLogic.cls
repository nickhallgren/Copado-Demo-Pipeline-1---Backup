/**********************************************************************************************************************************************************
Class Name: NZCAnnualEmissionInventoryArchDelLogic
Created By: Pranav Vibhandik
Created on: 25-June-2024 
Description: This class handles logic for deleting Annual Emission Inventory records 
and their related child records.

***********************************************************************************************************************************************************/

public class NZCAnnualEmissionInventoryArchDelLogic {

    // Method to check if associated parent records are locked or if they exist
    public List<AnnualEmssnInventory> filterLockedRecords(List<AnnualEmssnInventory> inventoryList) {
        //unlockedRecords will store records that are not locked
        //inventoriesToUpdate will store the records that need to be updated with archival comment indicating they are locked or associated 
        List<AnnualEmssnInventory> unlockedRecords = new List<AnnualEmssnInventory>();
        List<AnnualEmssnInventory> inventoriesToUpdate = new List<AnnualEmssnInventory>();

        for (AnnualEmssnInventory inventory : inventoryList) {
            // Check if any associated parent records are locked
            Boolean isParentLocked = checkParentRecords(inventory.Id);
            if (isParentLocked) {
                inventory.NZC_AEI_Archival_Comment__c = 'Associated child records are locked';
                inventoriesToUpdate.add(inventory);
                System.debug('Parent Record Locked: ' + inventory.Id);
                continue; // Continue to skip the rest of the loop for this record
            }

            // Check if any associated Emissions Reduction Target or Carbon Credit Allocation exist
            Boolean hasAssociatedParent = checkAssociatedParentRecords(inventory.Id);
            if (hasAssociatedParent) {
                inventory.NZC_AEI_Archival_Comment__c = 'Associated AEI has Emissions Reduction Target or Carbon Credit Allocation';
                inventoriesToUpdate.add(inventory);
                System.debug('Associated Emissions Reduction Target or Carbon Credit Allocation exists for Inventory: ' + inventory.Id);
                continue; // Skip this record if such parent records exist
            }

            // Add to unlocked list if associated records are not locked or have the specified parent records
            unlockedRecords.add(inventory);
        }

        // Update inventory records with comments
        if (!inventoriesToUpdate.isEmpty()) {
            try {
                update inventoriesToUpdate;
            } catch (Exception e) {
                System.debug('Failed to update inventories: ' + e.getMessage());
                NZCErrorLog.logError('Failed to update inventories: ' + e.getMessage());
            }
        }

        System.debug('Unlocked Records: ' + unlockedRecords);
        return unlockedRecords;
    }

    // Method to check if any associated parent records are locked
    public Boolean checkParentRecords(Id inventoryId) {
        // Check Stationary Asset Carbon Footprint
        Integer stnryAssetCount = [
            SELECT COUNT()
            FROM StnryAssetCrbnFtprnt
            WHERE AnnualEmssnInventoryId = :inventoryId AND IsRecordLocked = true
        ];
        if (stnryAssetCount > 0) {
            System.debug('Stationary Asset Carbon Footprint locked for Inventory: ' + inventoryId);
            return true;
        }

        // Check Vehicle Asset Carbon Footprint
        Integer vehicleAssetCount = [
            SELECT COUNT()
            FROM VehicleAssetCrbnFtprnt
            WHERE AnnualEmssnInventoryId = :inventoryId AND IsRecordLocked = true
        ];
        if (vehicleAssetCount > 0) {
            System.debug('Vehicle Asset Carbon Footprint locked for Inventory: ' + inventoryId);
            return true;
        }

        // Check Scope 3 Carbon Footprint
        Integer scope3Count = [
            SELECT COUNT()
            FROM Scope3CrbnFtprnt
            WHERE AnnualEmssnInventoryId = :inventoryId AND IsRecordLocked = true
        ];
        if (scope3Count > 0) {
            System.debug('Scope 3 Carbon Footprint locked for Inventory: ' + inventoryId);
            return true;
        }

        // Check Waste Footprint
        Integer wasteFootprintCount = [
            SELECT COUNT()
            FROM WasteFootprint
            WHERE AnnualEmssnInventoryId = :inventoryId AND IsRecordLocked = true
        ];
        if (wasteFootprintCount > 0) {
            System.debug('Waste Footprint locked for Inventory: ' + inventoryId);
            return true;
        }

        return false;
    }

    // Method to check if AEI has associated Emissions Reduction Target or Carbon Credit Allocations
    public Boolean checkAssociatedParentRecords(Id inventoryId) {
        // Check Emissions Reduction Target
        Integer emssnReductionTargetCount = [
            SELECT COUNT()
            FROM EmssnReductionTarget
            WHERE AnnualEmissionsInventoryId = :inventoryId
        ];
        if (emssnReductionTargetCount > 0) {
            System.debug('Emissions Reduction Target exists for Inventory: ' + inventoryId);
            return true;
        }

        // Check Carbon Credit Allocation
        Integer crbnCreditAllocCount = [
            SELECT COUNT()
            FROM CrbnCreditAlloc
            WHERE AnnualEmssnInventoryId = :inventoryId
        ];
        if (crbnCreditAllocCount > 0) {
            System.debug('Carbon Credit Allocation exists for Inventory: ' + inventoryId);
            return true;
        }

        return false;
    }


    // Method to delete records in bulk with error handling
    public void deleteRecords(List<SObject> records) {
        Database.DeleteResult[] deleteResults = Database.delete(records, false); // flag set to false to allow partial success

        // Iterate over the delete results and logs any errors encountered
        for (Database.DeleteResult result : deleteResults) {
            if (!result.isSuccess()) {
                for (Database.Error error : result.getErrors()) {
                    NZCErrorLog.logError(error.getMessage());
                }
            }
        }
    }

    // Method to delete child objects related to the Annual Emission Inventory records
    public void deleteChildObjects(List<AnnualEmssnInventory> inventoryList) {
        List<SObject> allChildObjects = new List<SObject>(); // Initialize lists for all child objects
        List<SObject> allParentObjects = new List<SObject>(); // Initialize lists for all parent objects
        List<Id> inventoryIds = new List<Id>();  // Initialize list for storing AnnualEmssnInventory Ids

        // Initialize list of parent and child records
        List<StnryAssetCrbnFtprnt> stnryAssetRecords = new List<StnryAssetCrbnFtprnt>();
        List<StnryAssetEnrgyUse> stationaryAssetEnergyUseRecords = new List<StnryAssetEnrgyUse>();
        List<VehicleAssetCrbnFtprnt> vehicleAssetRecords = new List<VehicleAssetCrbnFtprnt>();
        List<VehicleAssetEnrgyUse> vehicleAssetEnergyUseRecords = new List<VehicleAssetEnrgyUse>();
        List<Scope3CrbnFtprnt> scope3Records = new List<Scope3CrbnFtprnt>();
        List<FrgtHaulingEnrgyUse> freightHaulingEnergyUseRecords = new List<FrgtHaulingEnrgyUse>();
        List<RentalCarEnrgyUse> rentalCarEnergyUseRecords = new List<RentalCarEnrgyUse>();
        List<GeneratedWaste> generatedWasteRecords = new List<GeneratedWaste>();
        List<AirTravelEnrgyUse> airTravelEnergyUseRecords = new List<AirTravelEnrgyUse>();
        List<HotelStayEnrgyUse> hotelStayEnergyUseRecords = new List<HotelStayEnrgyUse>();
        List<GroundTravelEnrgyUse> groundTravelEnergyUseRecords = new List<GroundTravelEnrgyUse>();
        List<Scope3PcmtSummary> scope3ProcurementSummaryRecords = new List<Scope3PcmtSummary>();
        List<WasteFootprint> wastefootprintsRecords = new List<WasteFootprint>();
        List<GeneratedWaste> wasteFootprintChildRecords = new List<GeneratedWaste>();

        // Iterate over the inventory list to extract IDs of AEI records and add them to inventoryIds
        for (AnnualEmssnInventory inventory : inventoryList) {
            inventoryIds.add(inventory.Id);
        }

        // Queries StnryAssetCrbnFtprnt records related to AnnualEmssnInventory records and adds them to allParentObjects
        stnryAssetRecords = [SELECT Id FROM StnryAssetCrbnFtprnt WHERE AnnualEmssnInventoryId IN :inventoryIds];
        allParentObjects.addAll(stnryAssetRecords);

        // Queries StnryAssetEnrgyUse records related to StnryAssetCrbnFtprnt records and adds them to allParentObjects
        stationaryAssetEnergyUseRecords = [SELECT Id FROM StnryAssetEnrgyUse WHERE StnryAssetCrbnFtprntId IN :stnryAssetRecords];
        allChildObjects.addAll(stationaryAssetEnergyUseRecords);

        // Queries VehicleAssetCrbnFtprnt records related to AnnualEmssnInventory records and adds them to allParentObjects
        vehicleAssetRecords = [SELECT Id FROM VehicleAssetCrbnFtprnt WHERE AnnualEmssnInventoryId IN :inventoryIds];
        allParentObjects.addAll(vehicleAssetRecords);

        // Queries VehicleAssetEnrgyUse records related to VehicleAssetCrbnFtprnt records and adds them to allChildObjects
        vehicleAssetEnergyUseRecords = [SELECT Id FROM VehicleAssetEnrgyUse WHERE VehicleAssetCrbnFtprntId IN :vehicleAssetRecords];
        allChildObjects.addAll(vehicleAssetEnergyUseRecords);

        // Queries Scope3CrbnFtprnt records related to AnnualEmssnInventory records and adds them to allParentObjects
        scope3Records = [SELECT Id FROM Scope3CrbnFtprnt WHERE AnnualEmssnInventoryId IN :inventoryIds];
        allParentObjects.addAll(scope3Records);

        // Queries various child records related to Scope3CrbnFtprnt and adds them to allChildObjects
        // Query for Freight Hauling Energy Use records
        freightHaulingEnergyUseRecords = [SELECT Id FROM FrgtHaulingEnrgyUse WHERE Scope3CrbnFtprntId IN :scope3Records];
        allChildObjects.addAll(freightHaulingEnergyUseRecords);

        // Query for Rental Car Energy Use records
        rentalCarEnergyUseRecords = [SELECT Id FROM RentalCarEnrgyUse WHERE Scope3CrbnFtprntId IN :scope3Records];
        allChildObjects.addAll(rentalCarEnergyUseRecords);

        // Query for Generated Waste records
        generatedWasteRecords = [SELECT Id FROM GeneratedWaste WHERE Scope3CrbnFtprntId IN :scope3Records];
        allChildObjects.addAll(generatedWasteRecords);

        // Query for Air Travel Energy Use records
        airTravelEnergyUseRecords = [SELECT Id FROM AirTravelEnrgyUse WHERE Scope3CrbnFtprntId IN :scope3Records];
        allChildObjects.addAll(airTravelEnergyUseRecords);

        // Query for Hotel Stay Energy Use records
        hotelStayEnergyUseRecords = [SELECT Id FROM HotelStayEnrgyUse WHERE Scope3CrbnFtprntId IN :scope3Records];
        allChildObjects.addAll(hotelStayEnergyUseRecords);

        // Query for Ground Travel Energy Use records
        groundTravelEnergyUseRecords = [SELECT Id FROM GroundTravelEnrgyUse WHERE Scope3CrbnFtprntId IN :scope3Records];
        allChildObjects.addAll(groundTravelEnergyUseRecords);

        // Query for Scope 3 Procurement Summary records
        scope3ProcurementSummaryRecords = [SELECT Id FROM Scope3PcmtSummary WHERE Scope3CrbnFtprntId IN :scope3Records];
        allChildObjects.addAll(scope3ProcurementSummaryRecords);

        // Queries WasteFootprint records related to AnnualEmssnInventory records and adds them to allParentObjects
        wastefootprintsRecords = [SELECT Id FROM WasteFootprint WHERE AnnualEmssnInventoryId IN :inventoryIds];
        allParentObjects.addAll(wastefootprintsRecords);

        // Queries GeneratedWaste records related to WasteFootprint records and adds them to allChildObjects
        wasteFootprintChildRecords = [SELECT Id FROM GeneratedWaste WHERE WasteFootprintId IN :wastefootprintsRecords];
        allChildObjects.addAll(wasteFootprintChildRecords);

        // Delete all child objects first
        if (!allChildObjects.isEmpty()) {
            deleteRecords(allChildObjects);
        }

        // Then delete all parent objects
        if (!allParentObjects.isEmpty()) {
            deleteRecords(allParentObjects);
        }
    }
}