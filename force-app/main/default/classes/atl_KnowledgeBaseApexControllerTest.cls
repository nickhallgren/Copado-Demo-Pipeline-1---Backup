@isTest
public class atl_KnowledgeBaseApexControllerTest {
    
    @isTest
    private static void testGetKnowledgeArticles(){
        Test.startTest();
        List<atl_KnowledgeArticle__c> result = atl_KnowledgeBaseApexController.getKnowledgeArticles();
        Test.stopTest();
    }
    
    @isTest
    private static void testGetTechValues(){
        Test.startTest();
        List<String> result = atl_KnowledgeBaseApexController.getTechValues();
        Test.stopTest();
    }
    
    @isTest
    private static void testGetDomainValues(){
        Test.startTest();
        List<String> result = atl_KnowledgeBaseApexController.getDomainValues();
        Test.stopTest();
    }
}