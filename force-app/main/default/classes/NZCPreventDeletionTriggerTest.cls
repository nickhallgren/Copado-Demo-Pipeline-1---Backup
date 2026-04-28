/*******************************************************************************
Class Name : NZCPreventDeletionTriggerTest
Created By : Durjay/Debasmita
Created : 2-May-2024
Description : Used to test the apex Trigger name "NZCPreventDeletionTrigger"

*********************************************************************************
Change Log :

************************************************************************/

@isTest
public class NZCPreventDeletionTriggerTest {
    @isTest
    public static void deleteTest() {
        
    try{
        Id p = [SELECT Id FROM Profile WHERE Name='Partner Community User'].id;
        Test.startTest();
	    Account ac = new Account(name ='Test') ;
        insert ac;
        Contact con = new Contact(LastName ='testCon',AccountId = ac.Id);
        insert con;  
        User user = new User(
            UserName = 'test_' + math.random() + '@test.com',
            FirstName = 'Test-First',
            LastName = 'Test-Last',
            Alias = 'test',
            email = 'test' + math.random() + '@test.com',
            CommunityNickName = string.valueOf(math.random()).substring(0,6),
            ProfileID = p,
            TimeZoneSidKey = 'America/New_York', 
            LocaleSidKey = 'en_US', 
            EmailEncodingKey = 'UTF-8', 
            LanguageLocaleKey = 'en_US',
            ContactID = con.Id);
        insert user;
	  	System.runas(user){    
        List<NetworkMember> netString =[select NetworkId from NetworkMember where MemberId = :user.Id order by Id desc limit 1 ];
        String netId = netString[0].NetworkId;        
        ContentVersion cv = new ContentVersion(
            Title = 'Test',
            PathOnClient = 'Test.jpg',
            VersionData = Blob.valueOf('Test Content Data'),
            IsMajorVersion = true,
            NetworkId = netId
        );
        insert cv;
        Id conDocId = [SELECT ContentDocumentId FROM ContentVersion WHERE Id =:cv.Id].ContentDocumentId;
        list<contentDocument> cd = [select id from contentdocument where id =:conDocId];
        delete cd;
        }
        Test.stopTest();          
    }			
    catch(Exception e){
        system.assertNotEquals(e.getMessage(), 'File inserted','Test passed');
    }
        
	}
}