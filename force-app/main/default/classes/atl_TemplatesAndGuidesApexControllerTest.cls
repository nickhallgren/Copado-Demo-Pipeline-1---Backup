@isTest
public class atl_TemplatesAndGuidesApexControllerTest {

    @isTest
    private static void testGetTemplatesGuides(){
        Test.startTest();
        List<atl_Resource__c> result = atl_TemplatesAndGuidesApexController.getTemplatesGuides();
        Test.stopTest();
    }
    
    @isTest
    private static void testGetStageValues(){
        String deliveryResourceTypeTest = '/s/delivery';
        String advisoryResourceTypeTest = '/s/advisory';
        
        Test.startTest();
        List<atl_TemplatesAndGuidesApexController.PicklistValue> deliveryResult = atl_TemplatesAndGuidesApexController.getStageValues(deliveryResourceTypeTest);
        List<atl_TemplatesAndGuidesApexController.PicklistValue> advisoryResult = atl_TemplatesAndGuidesApexController.getStageValues(advisoryResourceTypeTest);
        Test.stopTest();
    }
    
    @isTest
    private static void testGetRoleValues(){
        String deliveryResourceTypeTest = '/s/delivery';
        String advisoryResourceTypeTest = '/s/advisory';
        
        Test.startTest();
        List<atl_TemplatesAndGuidesApexController.PicklistValue> deliveryResult = atl_TemplatesAndGuidesApexController.getRoleValues(deliveryResourceTypeTest);
        List<atl_TemplatesAndGuidesApexController.PicklistValue> advisoryResult = atl_TemplatesAndGuidesApexController.getRoleValues(advisoryResourceTypeTest);
        Test.stopTest();
    }
    
    @isTest
    private static void testGetTechValues(){
        String deliveryResourceTypeTest = '/s/delivery';
        String advisoryResourceTypeTest = '/s/advisory';
        
        Test.startTest();
        List<atl_TemplatesAndGuidesApexController.PicklistValue> deliveryResult = atl_TemplatesAndGuidesApexController.getTechValues(deliveryResourceTypeTest);
        List<atl_TemplatesAndGuidesApexController.PicklistValue> advisoryResult = atl_TemplatesAndGuidesApexController.getTechValues(advisoryResourceTypeTest);
        Test.stopTest();
    }
    
    @isTest
    private static void testGetStatusValues(){
        Test.startTest();
        List<atl_TemplatesAndGuidesApexController.PicklistValue> result = atl_TemplatesAndGuidesApexController.getStatusValues();
        Test.stopTest();
    }
    
    @isTest
    private static void testGetOwnerValues(){
        Test.startTest();
        List<atl_TemplatesAndGuidesApexController.PicklistValue> result = atl_TemplatesAndGuidesApexController.getOwnerValues();
        Test.stopTest();
    }
}