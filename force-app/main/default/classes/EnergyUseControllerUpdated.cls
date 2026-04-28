/******************************************************************************
Class Name: EnergyUseControllerUpdated
Created By : Harshvardhan Tiwari
Created : 11-Oct-23
Description : Created to get the metadata records to arrange them and show them on the data entry form, 
send the energy use record for approval, link the uploaded file to the record and to link the refrigerant record with
its emission factor.
==============================
Change Log:
==============================
Changed By: Harshvardhan Tiwari
Date: 15-July-2024
Description: 
1. Added createEnergyUseRecord method to take inputs from LWC component and create new Energy Use Records. 
2. Created EnergyUseWrapperFromJS wrapper class to capture information in from LWC
*************************************************************************/
public with sharing class EnergyUseControllerUpdated {
    
    //get the custom metadata records to pass it into lwc and show it as a form
    @AuraEnabled(cacheable=true)
    public static EnergyUseControllerUpdated.EnergyUseMetadataWrapper getMetadataInformation(String parentSiteInfo){
        //public static List<EnergyUseControllerUpdated.ScopeMetadataWrapper> getMetadataInformation(String parentSiteInfo){
        if(String.isBlank(parentSiteInfo)) return null;
        EnergyUseMetadataWrapper tempMetadataWrapper = new EnergyUseMetadataWrapper();
        StnryAssetEnvrSrc siteInfo = [SELECT Id, NZC_ULA__c, Name, Country, State FROM StnryAssetEnvrSrc WHERE Id=:parentSiteInfo LIMIT 1];
        if(siteInfo == null){
            return null;
        } 
        //refrigerant emission factor logic starts
        Map<String,String> refEmissionMap = getRefEmissionFactor(siteInfo);
        //refrigerant emission factor logic ends
        
        if(refEmissionMap == null || refEmissionMap.keySet().isEmpty()){
            tempMetadataWrapper.approvedEmissionFactorsFound = false;
            tempMetadataWrapper.scopeMetadataWrapperData = null;
            return tempMetadataWrapper;
        }
        
        List<Energy_Use_Fuel_Type__mdt> fuelTypeMetaList = new List<Energy_Use_Fuel_Type__mdt>();
        
        fuelTypeMetaList = [SELECT Fuel_Type__c,
                            MasterLabel,
                            Applicability_Picklist_Label__c,
                            Applicability_Values__c,
                            Show_Not_Applicable_For_Renewable__c,
                            UOM_Options__c,
                            Scope_Number__c,
                            Refrigerant_Emissions_Factor__c,
                            isSectionOpen__c,
                            Renewable_Energy_Type__c,
                            Order__c ,
                            Show_for_ULA__c                                            
                            FROM Energy_Use_Fuel_Type__mdt
                            WHERE Show_for_ULA__c = :siteInfo.NZC_ULA__c
                            ORDER BY Order__c ASC];
        
        List<EnergyUseControllerUpdated.ScopeMetadataWrapper> resultList = new List<ScopeMetadataWrapper>();
        Set<String> scopeList = new Set<String>();
        for(Energy_Use_Fuel_Type__mdt eft : fuelTypeMetaList){
            scopeList.add(eft.Scope_Number__c);
        }
        for(String scopeVar:scopeList){
            ScopeMetadataWrapper scopeWrapperVar = new ScopeMetadataWrapper();
            scopeWrapperVar.scopeLabel = scopeVar;
            List<Map<String,String>> fuelTypeMapList = new List<Map<String,String>>();
            for(Energy_Use_Fuel_Type__mdt fuelTypeVar:fuelTypeMetaList){
                Map<String,String> fuelTypeMap = new Map<String,String>();
                if(fuelTypeVar.Scope_Number__c == scopeVar){
                    fuelTypeMap.put('fuelType' , fueltypeVar.Fuel_Type__c);
                    fuelTypeMap.put('ApplicabilityPicklistLabel' , fuelTypeVar.Applicability_Picklist_Label__c);
                    fuelTypeMap.put('ApplicabilityValues' , fuelTypeVar.Applicability_Values__c);
                    fuelTypeMap.put('showNotApplicableForRenewable' , String.valueOf(fuelTypeVar.Show_Not_Applicable_For_Renewable__c));                  
                    fuelTypeMap.put('FuelTypeAccordionLabel' , fuelTypeVar.MasterLabel);
                    fuelTypeMap.put('uOMOptions' , fuelTypeVar.UOM_Options__c);
                    fuelTypeMap.put('renewableEnergyType' , fuelTypeVar.Renewable_Energy_Type__c);
                    fuelTypeMap.put('isSectionOpen',String.valueOf(fuelTypeVar.isSectionOpen__c));
                    
                    if(String.isNotBlank(fuelTypeVar.Refrigerant_Emissions_Factor__c) && refEmissionMap?.get(fuelTypeVar.Refrigerant_Emissions_Factor__c) != null){
                        fuelTypeMap.put('refrigerantEmissionsFactor',refEmissionMap.get(fuelTypeVar.Refrigerant_Emissions_Factor__c)); 
                    }
                    //fuelTypeMap.put('refrigerantEmissionsFactor',fuelTypeVar.Refrigerant_Emissions_Factor__c);
                    fuelTypeMapList.add(fuelTypeMap);
                }
            }
            scopeWrapperVar.fuelTypesList = fuelTypeMapList;
            resultList.add(scopeWrapperVar);
        }
        tempMetadataWrapper.scopeMetadataWrapperData = resultList;
        //return resultList;
        return tempMetadataWrapper;
    }
    
    //get the refrigerant emission factors from Emission Factor object based on Country and State of Site Information
    public static Map<String,String> getRefEmissionFactor(StnryAssetEnvrSrc siteInfo){
        // if(string.isBlank(siteInfo)) return null;
        if(siteInfo == null) return null;
        String query = '';
        String currentCountry = siteInfo.Country;
        String status = 'Approved';
        
        if(siteInfo.Country == 'US'){
            String currentState = siteInfo.State;
            query = 'SELECT Id, Name, CFC_R22_Refrigerant_Emissions_Factor__c, HFC_125_Refrigerant_Emissions_Factor__c, HFC_134a_Refrigerant_Emissions_Factor__c, HFC_R32_Refrigerant_Emissions_Factor__c, HFC_R407c_Refrigerant_Emissions_Factor__c,HFC_R410a_Refrigerant_Emissions_Factor__c FROM Emission_Factor__c WHERE Country__c=:currentCountry AND State__c=:currentState AND Status__c=:status LIMIT 1';
        }
        else{
            query = 'SELECT Id, Name, CFC_R22_Refrigerant_Emissions_Factor__c, HFC_125_Refrigerant_Emissions_Factor__c, HFC_134a_Refrigerant_Emissions_Factor__c, HFC_R32_Refrigerant_Emissions_Factor__c, HFC_R407c_Refrigerant_Emissions_Factor__c,HFC_R410a_Refrigerant_Emissions_Factor__c FROM Emission_Factor__c WHERE Country__c=:currentCountry AND Status__c=:status LIMIT 1';
        }
        List<Emission_Factor__c> lstEmissionFactors = Database.query(query);
        if(lstEmissionFactors == null || lstEmissionFactors.isEmpty()) return null;
        Emission_Factor__c refEmission = lstEmissionFactors[0];
        Map<String,String> refEmissionMap = new Map<String,String>();
        refEmissionMap.put('CFC-R22', refEmission.CFC_R22_Refrigerant_Emissions_Factor__c);
        refEmissionMap.put('HFC-125', refEmission.HFC_125_Refrigerant_Emissions_Factor__c);
        refEmissionMap.put('HFC-134a', refEmission.HFC_134a_Refrigerant_Emissions_Factor__c);
        refEmissionMap.put('HFC-R32', refEmission.HFC_R32_Refrigerant_Emissions_Factor__c);
        refEmissionMap.put('HFC-R407c', refEmission.HFC_R407c_Refrigerant_Emissions_Factor__c);
        refEmissionMap.put('HFC-R410a', refEmission.HFC_R410a_Refrigerant_Emissions_Factor__c);
        return refEmissionMap;
    }
    
    /*Create the energy use records based on the details captured from all the child components of the LWC Component.
      Details are received as List of Wrapper objects where each wrapper object represents the details captured from a 
      single child component.
      Example Wrapper object received from LWC for one fuel type:
              (EnergyUseWrapperFromJS:[applicabilityValue=Applicable, 
                                       energyUseRecord=StnryAssetEnrgyUse:{StnryAssetEnvrSrcId=0ph6w000000Cc1zAAC, 
                                                                           Procurement_Emissions_Factor_Set__c=0pT6w0000008OLJEA2, 
                                                                           Name=Test Energy Use New, 
                                                                           FuelConsumption=100, 
                                                                           FuelType=Electricity, 
                                                                           FuelConsumptionUnit=kWh, 
                                                                           StartDate=2024-07-25 00:00:00, 
                                                                           EndDate=2024-07-26 00:00:00, 
                                                                           I_have_reviewed_all_fields_and_data__c=true}, 
                                       fileDocumentId=0696w000001mGsxAAE, 
                                       fuelTypeLabel=Electricity
                                       ]
               )
  
       Example Wrapper object after energy use record creation:
               (EnergyUseWrapperFromJS:[applicabilityValue=Applicable, 
                                        energyUseRecord=StnryAssetEnrgyUse:{StnryAssetEnvrSrcId=0ph6w000000Cc1zAAC, 
                                                                            Procurement_Emissions_Factor_Set__c=0pT6w0000008OLJEA2, 
                                                                            Name=Test Energy Use New, 
                                                                            FuelConsumption=100, 
                                                                            FuelType=Electricity, 
                                                                            FuelConsumptionUnit=kWh, 
                                                                            StartDate=2024-07-25 00:00:00, 
                                                                            EndDate=2024-07-26 00:00:00, 
                                                                            I_have_reviewed_all_fields_and_data__c=true, 
                                                                            Id=7LK6w000000CjfaGAC}, 
                                        fileDocumentId=0696w000001mGsxAAE,  
                                        fuelTypeLabel=Electricity
                                        ]
                 )
    */
    @AuraEnabled
    public static List<StnryAssetEnrgyUse> createEnergyUseRecord(List<EnergyUseWrapperFromJS> energyUseWrapper){
        //System.debug('wrapper from js '+ energyUseWrapper);
        List<StnryAssetEnrgyUse> energyUseRecordsToInsert = new List<StnryAssetEnrgyUse>();
        List<String> failureMessages = new List<String>();
        try{
            for(EnergyUseWrapperFromJS temp : energyUseWrapper){
                if(temp.applicabilityValue == 'Applicable'){
                    energyUseRecordsToInsert.add(temp.energyUseRecord);
                }
            }
            Database.SaveResult[] energyUseRecordsResultList = Database.insert(energyUseRecordsToInsert, false);
            for(Database.SaveResult sr : energyUseRecordsResultList){
                if(!sr.isSuccess()){
                    for(Database.Error err : sr.getErrors()) {
                       failureMessages.add('Failed to create StnryAssetEnrgyUse records : ' + err.getMessage());
                    }
                }
            }
            //System.debug('eu records created are '+ energyUseRecordsToInsert);
            //System.debug('wrapper after eu creation '+ energyUseWrapper);
            List<Energy_Use_Data_Log__c> dataLogsToInsert = new List<Energy_Use_Data_Log__c>();
            for(EnergyUseWrapperFromJS temp : energyUseWrapper){
                Energy_Use_Data_Log__c ed = new Energy_Use_Data_Log__c();
                ed.Site_Information__c = temp.energyUseRecord.StnryAssetEnvrSrcId;
                ed.Stationary_Asset_Energy_Use__c = temp.energyUseRecord.Id;
                ed.Fuel_Type__c = temp.fuelTypeLabel;
                ed.Fuel_Consumption__c = temp.energyUseRecord.FuelConsumption;
                ed.Consumption_Unit__c = temp.energyUseRecord.FuelConsumptionUnit;
                ed.Option_Selected__c = temp.applicabilityValue;
                ed.Start_Date__c = temp.energyUseRecord.StartDate;
                ed.End_Date__c = temp.energyUseRecord.EndDate;
                ed.NZC_Month_Selected__c = temp.energyUseRecord.NZC_Month__c;
                ed.Comments__c = temp.energyUseRecord.Comments__c;
                ed.User_Time__c = UserInfo.getUserName() + ' ' + Datetime.now();
                
                dataLogsToInsert.add(ed);
            }
            
            linkFile(energyUseWrapper);
            
            if(!dataLogsToInsert.isEmpty()){
                insert dataLogsToInsert;
            }
            
            if(!failureMessages.isEmpty()){
                NZCErrorLog.logErrors(failureMessages);
            }
        }
        catch(Exception ex) {
            NZCErrorLog.logError('Failed to create StnryAssetEnrgyUse records : ' + ex.getMessage());
            //System.debug('error on '+ ex.getLineNumber() + ex.getMessage());
            return null;
        }
        return energyUseRecordsToInsert;
    }
    
    //linking the uploaded file to an energy use record
    @AuraEnabled
    public static void linkFile(List<EnergyUseWrapperFromJS> energyUseWrapper){ 
        List<ContentDocumentLink> contentDocumentListToInsert = new List<ContentDocumentLink>();
        for(EnergyUseWrapperFromJS temp: energyUseWrapper){
            if(temp.energyUseRecord.Id != null && String.isNotBlank(temp.fileDocumentId)){
                List<String> fileStringList = temp.fileDocumentId.split(',');
                for(String s:fileStringList){
                   ContentDocumentLink cdl = new ContentDocumentLink();
                   cdl.ContentDocumentId = s;
                   cdl.LinkedEntityId = temp.energyUseRecord.Id;
                   contentDocumentListToInsert.add(cdl);
                }
                //System.debug('contentDocumentListToInsert:'+contentDocumentListToInsert);
            }
        }
        try{    
            if(!contentDocumentListToInsert.isEmpty() && ContentDocumentLink.sObjectType.getDescribe(SObjectDescribeOptions.DEFERRED).isCreateable()){
                insert contentDocumentListToInsert;    
            }
        }
        catch(Exception e){
            NZCErrorLog.logError('Failed to link file to StnryAssetEnrgyUse record : ' + e.getMessage());
        }
    }
    
    public class EnergyUseMetadataWrapper{
        @AuraEnabled
        public boolean approvedEmissionFactorsFound = true;
        @AuraEnabled
        public List<ScopeMetadataWrapper> scopeMetadataWrapperData;
    }
    
    public class ScopeMetadataWrapper{
        @AuraEnabled
        public String scopeLabel;
        @AuraEnabled
        public List<Map<String,String>> fuelTypesList;    
    }
    
    public class EnergyUseWrapperFromJS{
        @AuraEnabled
        public StnryAssetEnrgyUse energyUseRecord {get; set;}
        @AuraEnabled
        public String fileDocumentId {get; set;}
        @AuraEnabled
        public String applicabilityValue {get; set;}
        @AuraEnabled
        public String fuelTypeLabel {get; set;}
    }
}