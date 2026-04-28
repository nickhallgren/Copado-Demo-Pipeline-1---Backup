/************************************************************************************************************************************************************************************
Class Name: NZCR22Refrigerant
Created By: Susnato
Created on: 13-May-2024 
Description: Used to calculate the sum of total energy consumption from the annual emissions inventory's associated carbon footprint records and sum of scope 1 emissions of the annual emissions inventory's associated energy use records where name contains R22 and fuel type is Refrigerant
Test Class: NZCR22RefrigerantTest

*************************************************************************************************************************************************************************************
Change Log:

*************************************************************************************************************************************************************************************/
public without sharing class NZCR22Refrigerant {
    @InvocableMethod
    public static void getR22andEnergy(List<AnnualEmssnInventory> aeiRecord) {
        try {
            if(aeiRecord == null || aeiRecord.size() == 0) return;
            
            aeiRecord[0].Outside_of_scopes_R22_refrigerant__c = R22Calculation(aeiRecord);
            aeiRecord[0].Electricity_from_renewable_sources_India__c = percentageCalculation(aeiRecord);
            aeiRecord[0].Electricity_from_renewable_sources__c = percentageCalculation2(aeiRecord);
            update aeiRecord;
            
        } catch (Exception ex) {
            System.debug('Exception: ' + ex.getMessage());
            throw new AuraHandledException(ex.getMessage());
        }
    }
    
    // Method 1 to calculate and update sumOfScope1Emissions
    public static Decimal R22Calculation(List<AnnualEmssnInventory> aeiRecord){
        
        List<StnryAssetCrbnFtprnt> cfRecords = new List<StnryAssetCrbnFtprnt>();
        List<String> cfRecordIdList = new List<String>();
        List<StnryAssetEnrgyUse> energyUseRecords = new List<StnryAssetEnrgyUse>();
        List<AnnualEmssnInventory> aei = new List<AnnualEmssnInventory>();
        
        String labelOfFuelType = System.Label.NZC_Fuel_Type_Refrigerant;
        String labelOfBusinessRegion = System.Label.Business_Region_India;
        String labelOfStationaryAssetDataCenter = System.Label.Stationary_Asset_Data_Center;
        String labelOfRefrigerantEmissionsFactor = System.Label.NZC_Refrigerant_Emissions_Factor;
        
        Decimal sumOfScope1Emissions = 0;
        cfRecords = [SELECT id, TotEnergyConsumptionInGj FROM StnryAssetCrbnFtprnt WHERE AnnualEmssnInventoryId = :aeiRecord[0].id];
        
        for (StnryAssetCrbnFtprnt cf : cfRecords) {
            cfRecordIdList.add(cf.id);
        }
        // Query to fetch all associated energy use records of the Carbon Footprints where name has R22 and fuel type is Refrigerant
        energyUseRecords = [SELECT id, Scope1EmissionsInTco2e 
                            FROM StnryAssetEnrgyUse 
                            WHERE (StnryAssetCrbnFtprntId IN :cfRecordIdList  
                                   AND FuelType = :labelOfFuelType 
                                   AND RefrigerantEmssnFctr.Name 
                                   LIKE: labelOfRefrigerantEmissionsFactor)];
        for (StnryAssetEnrgyUse eu : energyUseRecords) {
            sumOfScope1Emissions += (eu.Scope1EmissionsInTco2e != null) ? eu.Scope1EmissionsInTco2e : 0;
        }
        
        //Storing the calculated total scope 1 emissions in the outside of scopes field of Annual Emission Inventory record
        aeiRecord[0].Outside_of_scopes_R22_refrigerant__c = sumOfScope1Emissions;
        return aeiRecord[0].Outside_of_scopes_R22_refrigerant__c;
    }
    
    // Method 2 to calculate and update Electricity from renewable sources
    public static Decimal percentageCalculation(List<AnnualEmssnInventory> aeiRecord)
    {
        List<StnryAssetEnrgyUse> allEnergyUseRecords = new List<StnryAssetEnrgyUse>();
        
        
        String labelOfFuelType = System.Label.NZC_Fuel_Type_Refrigerant;
        String labelOfBusinessRegion = System.Label.Business_Region_India;
        String labelOfStationaryAssetDataCenter = System.Label.Stationary_Asset_Data_Center; 
        String labelOfRefrigerantEmissionsFactor = System.Label.NZC_Refrigerant_Emissions_Factor;
        String labelOfFuelTypeElectricity = System.Label.NZC_Fuel_Type;
        String labelOfStationaryAssetCAE = System.Label.NZC_Stationary_Asset_CAE;
        String labelOfFuelTypeSelfGenerated = System.Label.NZC_Fuel_Type_selfgenerated;
        String labelOfRenewableSolar = System.Label.NZC_Renewable_Energy_Solar;
        String labelOfRenewableWind = System.Label.NZC_Renewable_Energy_Wind;
        
        Decimal sumOfRenewable = 0; 
        Decimal sumOfElectricity = 0;
        
        allEnergyUseRecords = [SELECT Name, TotalFuelConsumptionInKwh, 
                               RenewableEnergyType, 
                               FuelType, 
                               StnryAssetEnvrSrc.StationaryAssetIdentifier, 
                               StnryAssetEnvrSrc.BusinessRegion, 
                               StnryAssetEnvrSrc.StationaryAssetType,
                               AllocatedRenewableEnergyInKwh
                               FROM StnryAssetEnrgyUse 
                               WHERE 
                               StnryAssetCrbnFtprnt.AnnualEmssnInventory.Year =: aeiRecord[0].Year AND 
                               StnryAssetEnvrSrc.StationaryAssetType !=: labelOfStationaryAssetDataCenter AND 
                               (StnryAssetEnvrSrc.NZC_ULA__c =: False) AND
                               StnryAssetEnvrSrc.BusinessRegion =: labelOfBusinessRegion];
        
        for(StnryAssetEnrgyUse eur : allEnergyUseRecords){
            if(eur.RenewableEnergyType == labelOfRenewableSolar || eur.RenewableEnergyType == labelOfRenewableWind){
                //sumOfRenewable += (eur.FuelConsumption != null) ? eur.FuelConsumption : 0;
                sumOfRenewable += (eur.AllocatedRenewableEnergyInKwh != null) ? eur.AllocatedRenewableEnergyInKwh : 0;
            } 
            if (eur.FuelType == labelOfFuelTypeElectricity ){
                sumOfElectricity += (eur.TotalFuelConsumptionInKwh != null) ? eur.TotalFuelConsumptionInKwh : 0;
            }
            if(eur.FuelType == labelOfFuelTypeSelfGenerated){
                sumOfRenewable += (eur.TotalFuelConsumptionInKwh != null) ? eur.TotalFuelConsumptionInKwh : 0;
                sumOfElectricity += (eur.TotalFuelConsumptionInKwh != null) ? eur.TotalFuelConsumptionInKwh : 0;
            }
        }
        if(sumOfElectricity!=0){
            aeiRecord[0].Electricity_from_renewable_sources_India__c = (sumOfRenewable/sumOfElectricity)*100;
            
            return aeiRecord[0].Electricity_from_renewable_sources_India__c;
        }
        else{
            aeiRecord[0].Electricity_from_renewable_sources_India__c = 0.0;
            system.debug('Energy Consumption value India '+aeiRecord[0].Electricity_from_renewable_sources_India__c);
            return 0;
        }
    }
    public static Decimal percentageCalculation2(List<AnnualEmssnInventory> aeiRecord)
    {
        List<StnryAssetEnrgyUse> scope1Scope2Records = new List<StnryAssetEnrgyUse>();
        List<VehicleAssetEnrgyUse> vaeu = new List<VehicleAssetEnrgyUse>();
        List<StnryAssetEnrgyUse> solarWindRecords = new List<StnryAssetEnrgyUse>();
        
        String labelOfFuelTypeSelfGenerated = System.Label.NZC_Fuel_Type_selfgenerated;
        String labelOfRenewableSolar = System.Label.NZC_Renewable_Energy_Solar;
        String labelOfRenewableWind = System.Label.NZC_Renewable_Energy_Wind;
        String labelOfFuelTypeElectricity = System.Label.NZC_Fuel_Type;
        
        Decimal sumOfDiesel = 0;
        Decimal sumOfGasoline = 0;
        Decimal sumOfElectricity = 0;
        Decimal sumOfSc12 = 0;
        Decimal sumOfSW = 0;
        Decimal sumOfScope12kWh = 0;
        
        scope1Scope2Records=[SELECT FuelType,FuelConsumptionInGigajoule,TotalFuelConsumptionInKwh 
                             FROM StnryAssetEnrgyUse 
                             WHERE StnryAssetCrbnFtprnt.AnnualEmssnInventory.Year=:aeiRecord[0].Year 
                             AND (FuelType =: 'custom_LPG' OR FuelType =: 'custom_MultitenantDG' OR FuelType =: labelOfFuelTypeSelfGenerated 
                                  OR FuelType =: 'Diesel' OR FuelType =: labelOfFuelTypeElectricity OR FuelType =: 'NaturalGas') 
                             AND (NOT(StnryAssetEnvrSrc.Name LIKE 'CIS Data Centers%')) 
                             AND (StnryAssetEnvrSrc.NZC_ULA__c =: False)];
        
        vaeu=[SELECT FuelType,FuelConsumption
              FROM VehicleAssetEnrgyUse 
              WHERE VehicleAssetCrbnFtprnt.AnnualEmssnInventory.Year =: aeiRecord[0].Year 
              AND (FuelType =: 'Diesel' OR FuelType =: 'Gasoline' OR FuelType =: labelOfFuelTypeElectricity) AND Accrual__c=FALSE];
        
            solarWindRecords=[SELECT FuelType,FuelConsumptionInGigajoule,AllocatedRenewableEnergyInKwh
                          FROM StnryAssetEnrgyUse 
                          WHERE StnryAssetCrbnFtprnt.AnnualEmssnInventory.Year =: aeiRecord[0].Year 
                          AND (RenewableEnergyType =: labelOfRenewableSolar OR RenewableEnergyType =: labelOfRenewableWind OR FuelType =: labelOfFuelTypeSelfGenerated) 
                          AND (StnryAssetEnvrSrc.NZC_ULA__c =: False)];
        
        for(StnryAssetEnrgyUse tt1 : scope1Scope2Records){
            sumOfSc12 += (tt1.FuelConsumptionInGigajoule != null) ? tt1.FuelConsumptionInGigajoule :0;
            sumOfScope12kWh += (tt1.TotalFuelConsumptionInKwh != null) ? tt1.TotalFuelConsumptionInKwh :0;
        }
        
        for(VehicleAssetEnrgyUse tt2 : vaeu){
            if( tt2.FuelType=='Diesel' ){
                sumOfDiesel += (tt2.FuelConsumption != null) ? tt2.FuelConsumption :0;
            }
            else if( tt2.FuelType=='Gasoline' ){
                sumOfGasoline += (tt2.FuelConsumption != null) ? tt2.FuelConsumption :0;
            }
            else if( tt2.FuelType=='labelOfFuelTypeElectricity' ){
                sumOfElectricity += (tt2.FuelConsumption != null) ? tt2.FuelConsumption :0;
            }        
        }
        //Converting the kWh into Gigajoules
        sumOfScope12kWh = sumOfScope12kWh * 0.0036;
        sumOfDiesel = ( sumOfDiesel / 1185.779 ) * 45.278;
        sumOfGasoline = ( sumOfGasoline / 1342.86 )* 45.998;
        sumOfElectricity = sumOfElectricity * 0.0036;
        sumOfSc12 = sumOfSc12 + sumOfDiesel + sumOfGasoline + sumOfElectricity;
        sumOfScope12kWh = sumOfScope12kWh + sumOfDiesel + sumOfGasoline + sumOfElectricity;
        
        for(StnryAssetEnrgyUse tt3 : solarWindRecords){
                sumOfSW += (tt3.AllocatedRenewableEnergyInKwh != null) ? tt3.AllocatedRenewableEnergyInKwh :0;
        }
        //Converting the kWh into Gigajoules
        sumOfSW = sumOfSW * 0.0036;
        System.debug('Renewable:'+sumOfSW);
        System.debug('Electricity:'+sumOfScope12kWh);
        if(sumOfScope12kWh!=0){
            aeiRecord[0].Electricity_from_renewable_sources__c = ( sumOfSW / sumOfScope12kWh ) * 100;
            aeiRecord[0].Energy_consumption_in_GJ_Sc_1_and_Sc_2__c = sumOfSc12;        
            return aeiRecord[0].Electricity_from_renewable_sources__c;
        }
        else{
            aeiRecord[0].Energy_consumption_in_GJ_Sc_1_and_Sc_2__c = 0.0;
            return 0;
        }
    } 
}