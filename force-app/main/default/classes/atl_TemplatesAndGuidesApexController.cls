public class atl_TemplatesAndGuidesApexController {
    
    @AuraEnabled
    // Initial resource query + record type retrieval
    public static List<atl_Resource__c> getTemplatesGuides() {
        // Get all record type ids
        Id templateGuideId = Schema.SObjectType.atl_Resource__c.getRecordTypeInfosByDeveloperName().get('TemplateOrGuide').getRecordTypeId();
        // Get all resources
        List<atl_Resource__c> templatesGuides = [SELECT Name, atl_AvailableForSearch__c, atl_DisplayName__c, atl_DocType__c, atl_Link__c, atl_Owner__c,
                                           atl_Role__c, atl_Cognizant_Role__c, atl_SalesforceFileId__c, atl_Stage__c, atl_cognizant_stage__c, atl_StageDisplay__c, atl_StageDisplayCognizant__c, atl_Status__c, atl_Sequence__c, 
                                           RecordTypeId, atl_Technology__c, atl_Cognizant_Technology__c, atl_TrainingType__c, atl_ResourceType__c, atl_Project_Type__c,
                                           atl_Advisory_Role__c, atl_Advisory_Stage__c, atl_Advisory_Offering__c, atl_StageAdvisoryDisplay__c FROM atl_Resource__c WHERE RecordTypeId =:templateGuideId ORDER BY atl_Sequence__c ASC];
        return templatesGuides;    
    }
    
    // This grabs the values for the stage picklist
    @AuraEnabled
    public static List<PicklistValue> getStageValues(String resourceType) {
        List<PicklistValue> stages = new List<PicklistValue>();
		List<Schema.PicklistEntry> stageVals;
        if (resourceType.contains('/s/advisory')) {
			stageVals = atl_Resource__c.atl_Advisory_Stage__c.getDescribe().getPicklistValues();
        } else if (resourceType.contains('/s/atg-delivery')) {
            stageVals = atl_Resource__c.atl_Stage__c.getDescribe().getPicklistValues();
        } else if (resourceType.contains('/s/cognizant-delivery')) {
			stageVals = atl_Resource__c.atl_cognizant_stage__c.getDescribe().getPicklistValues();
        }
        if (stageVals != null) {
            for (Schema.PicklistEntry stageVal :stageVals) {
                PicklistValue val = new PicklistValue();
                val.label = stageVal.getLabel();
                val.value = stageVal.getValue();
                stages.add(val);
            }
        }
        return stages;
    }
    			
    public class PicklistValue {
        @AuraEnabled
        public String label;
        @AuraEnabled
        public String value;
    }
    
    @AuraEnabled
    // This grabs the values for the role picklist
    public static List<PicklistValue> getRoleValues(String resourceType) {
        List<PicklistValue> roles = new List<PicklistValue>();
        List<Schema.PicklistEntry> roleVals;
        if (resourceType.contains('/s/advisory')) {
			roleVals = atl_Resource__c.atl_Advisory_Role__c.getDescribe().getPicklistValues();
        } else if (resourceType.contains('/s/atg-delivery')) {
            roleVals = atl_Resource__c.atl_Role__c.getDescribe().getPicklistValues();
        } else if (resourceType.contains('/s/cognizant-delivery')) {
			roleVals = atl_Resource__c.atl_cognizant_Role__c.getDescribe().getPicklistValues();
        }
        if (roleVals != null) {
            for (Schema.PicklistEntry role :roleVals) {
                PicklistValue val = new PicklistValue();
				val.label = role.getLabel();
                val.value = role.getValue();
                roles.add(val);
            }
        }
        return roles;
    }
    
    @AuraEnabled
    // This grabs the values for the technology picklist
    public static List<PicklistValue> getTechValues(String resourceType) {
        List<PicklistValue> techs = new List<PicklistValue>();
        if (resourceType.contains('/s/advisory')) {
            for (Schema.PicklistEntry tech :atl_Resource__c.atl_Advisory_Offering__c.getDescribe().getPicklistValues()) {
                PicklistValue val = new PicklistValue();
                val.label = tech.getLabel();
                val.value = tech.getValue();
                techs.add(val);
            }
        } else if (resourceType.contains('/s/atg-delivery')) {
            for (Schema.PicklistEntry tech :atl_Resource__c.atl_Technology__c.getDescribe().getPicklistValues()) {
                PicklistValue val = new PicklistValue();
                val.label = tech.getLabel();
                val.value = tech.getValue();
                techs.add(val);
            }
        } else if (resourceType.contains('/s/cognizant-delivery')) {
            for (Schema.PicklistEntry role :atl_Resource__c.atl_Cognizant_Technology__c.getDescribe().getPicklistValues()) {
                PicklistValue val = new PicklistValue();
                val.label = role.getLabel();
                val.value = role.getValue();
                techs.add(val);
            }
        }
        return techs;
    }
    
    //get status values
    @AuraEnabled
    // This grabs the values for the Status picklist
    public static List<PicklistValue> getStatusValues() {
        List<PicklistValue> statuses = new List<PicklistValue>();
        for (Schema.PicklistEntry status :atl_Resource__c.atl_Status__c.getDescribe().getPicklistValues()) {
            PicklistValue val = new PicklistValue();
            val.label = status.getLabel();
            val.value = status.getValue();
            statuses.add(val);
        }
        return statuses;
    }
    
    @AuraEnabled
    // This grabs the values for the Owner picklist
    public static List<PicklistValue> getOwnerValues() {
        List<PicklistValue> owners = new List<PicklistValue>();
        for (Schema.PicklistEntry owner :atl_Resource__c.atl_Owner__c.getDescribe().getPicklistValues()) {
            PicklistValue val = new PicklistValue();
            val.label = owner.getLabel();
            val.value = owner.getValue();
            owners.add(val);
        }
        return owners;
    }
}