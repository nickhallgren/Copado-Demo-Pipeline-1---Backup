@isTest
public class devops_HelloWorld_Test {
	
    @TestSetup
    static void testDataSetup() {
        // collect Product2 "CPQ Product Record Type" Id 
        Id cpqProductRTId = Schema.SObjectType.Product2.getRecordTypeInfosByDeveloperName().get('CPQ_Product_Record_Type_1').getRecordTypeId();
        System.debug('cpqProductRTId--->'+cpqProductRTId);
        
        // create Product2 record
        Product2 prod = new Product2(
            RecordTypeId = cpqProductRTId,
        	Name = 'Test Product',
            New_Product_2__c = 'Text value for new field 2',
            
            // following fields added for Method2
            New_Product_1__c = 'Black',
            New_Product_3__c = 'Text value for new field 3'
        );
        
        // insert our new Product to create it in memory
        insert prod;
    }
    
    @isTest 
    private static void testMethod1() {
        // collect Product2 record
        Product2 prod = [SELECT Name, New_Product_2__c FROM Product2 LIMIT 1];
        
        // pass to devops_HelloWorld.returnProductValues1
        devops_HelloWorld.returnProductValues1(prod);
    }
    
    @isTest 
    private static void testMethod2() {
        Product2 prod = [SELECT Name, New_Product_1__c, New_Product_3__c FROM Product2 LIMIT 1];
        
        // pass to devops_HelloWorld.returnProductValues2
        devops_HelloWorld.returnProductValues2(prod);
    }
}