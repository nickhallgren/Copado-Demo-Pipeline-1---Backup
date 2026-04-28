public with sharing class EnergyUseControllerUpdatedOLD {
    /******************************************************************************
Class Name: EnergyUseControllerUpdatedOLD
Created By : Harshvardhan Tiwari
Created : 11-Oct-23
Description : Created to get the metadata records to arrange them and show them on the data entry form, 
send the energy use record for approval, link the uploaded file to the record and to link the refrigerant record with
its emission factor
*************************************************************************/

    //get the custom metadata records to pass it into lwc and show it as a form
    @AuraEnabled(cacheable=true)
    public static EnergyUseControllerUpdatedOLD.EnergyUseMetadataWrapper getMetadataInformation(String parentSiteInfo){
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

 
        //else{
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

        List<EnergyUseControllerUpdatedOLD.ScopeMetadataWrapper> resultList = new List<ScopeMetadataWrapper>();
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
    
    //linking the uploaded file to a record
    @AuraEnabled
    public static String linkFile(String documentId, String energyUseRecordId){
        ContentDocumentLink cdl = new ContentDocumentLink();
        cdl.ContentDocumentId = documentId;
        cdl.LinkedEntityId = energyUseRecordId;
        try{
            if(ContentDocumentLink.sObjectType.getDescribe(SObjectDescribeOptions.DEFERRED).isCreateable()){
                Insert cdl;    
            }
            
        }
        catch(Exception e){
            return 'File not linked';
        }
        
        return 'File linked successfully!';
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
}