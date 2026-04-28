@isTest
public class atl_MainFilterApexControllerTest {
    
    @isTest
    private static void testGetResources() {
        Test.startTest();
        Map<String, Object> result = atl_MainFilterApexController.getResources();
        Test.stopTest();
    }
    
    @isTest
    private static void testGetStageValues() {
        String deliveryResourceTypeTest = '/s/delivery';
        String advisoryResourceTypeTest = '/s/advisory';
        
        Test.startTest();
        List<atl_MainFilterApexController.PicklistValue> deliveryResult = atl_MainFilterApexController.getStageValues(deliveryResourceTypeTest);
        List<atl_MainFilterApexController.PicklistValue> advisoryResult = atl_MainFilterApexController.getStageValues(advisoryResourceTypeTest);
        Test.stopTest();
    }
    
    @isTest
    private static void testGetRoleValues() {
        String deliveryResourceTypeTest = '/s/delivery';
        String advisoryResourceTypeTest = '/s/advisory';
        
        Test.startTest();
        List<atl_MainFilterApexController.PicklistValue> deliveryResult = atl_MainFilterApexController.getRoleValues(deliveryResourceTypeTest);
        List<atl_MainFilterApexController.PicklistValue> advisoryResult = atl_MainFilterApexController.getRoleValues(advisoryResourceTypeTest);
        Test.stopTest(); 
    }
    
    @isTest
    private static void testGetTechValues() {
        String deliveryResourceTypeTest = '/s/delivery';
        String advisoryResourceTypeTest = '/s/advisory';
        
        Test.startTest();
        List<atl_MainFilterApexController.PicklistValue> deliveryResult = atl_MainFilterApexController.getTechValues(deliveryResourceTypeTest);
        List<atl_MainFilterApexController.PicklistValue> advisoryResult = atl_MainFilterApexController.getTechValues(advisoryResourceTypeTest);
        Test.stopTest();
    }
}