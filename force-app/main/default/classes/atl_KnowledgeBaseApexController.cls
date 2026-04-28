public class atl_KnowledgeBaseApexController {
    
    @AuraEnabled
    // Initial resource query + record type retrieval
    public static List<atl_KnowledgeArticle__c> getKnowledgeArticles() {
        // Get all KAs
        List<atl_KnowledgeArticle__c> KAs = [SELECT Name, atl_Author__c, atl_Body__c, atl_Legacy__c, atl_AuthorName__c,
                                             atl_Published__c, atl_SalesforceFileID__c, atl_Title__c, atl_Domain__c, atl_Technology__c, atl_Sequence__c
                                             FROM atl_KnowledgeArticle__c ORDER BY atl_Sequence__c ASC];
        return KAs;    
    }
    
    @AuraEnabled
    // This grabs the values for the technology picklist
    public static List<String> getTechValues() {
        List<String> techs = new List<String>();
        for (Schema.PicklistEntry tech :atl_KnowledgeArticle__c.atl_Technology__c.getDescribe().getPicklistValues()) {
            techs.add(tech.getValue());
        }
        return techs;
    }
    
    @AuraEnabled
    // This grabs the values for the Domain picklist
    public static List<String> getDomainValues() {
        List<String> domains = new List<String>();
        for (Schema.PicklistEntry domain :atl_KnowledgeArticle__c.atl_Domain__c.getDescribe().getPicklistValues()) {
            domains.add(domain.getValue());
        }
        return domains;
    }
    
    @AuraEnabled
    // This grabs the specifics for the selected Knowledge Article
    public static atl_KnowledgeArticle__c getKnowledgeArticleDetails(Id recordId) {
        atl_KnowledgeArticle__c KA = [SELECT Name, atl_Author__c, atl_Body__c, atl_Legacy__c, atl_AuthorName__c,
                                      atl_Published__c, atl_SalesforceFileID__c, atl_Title__c, atl_Domain__c, atl_Technology__c, atl_Sequence__c
                                      FROM atl_KnowledgeArticle__c WHERE Id =:recordId ];
        return KA;
    }
}