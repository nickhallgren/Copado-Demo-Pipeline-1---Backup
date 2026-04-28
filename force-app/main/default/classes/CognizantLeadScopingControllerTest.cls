@isTest
public class CognizantLeadScopingControllerTest {

    @isTest
    static void testInsertingLead() {
 		
        Test.startTest();
                
        Lead lead = new Lead();
        lead.LastName = 'Jones';
        lead.Company = 'ABCWorks';
        Blob file1 = Blob.valueof('Garbage');
        String fileName1 = 'Garbage.txt';
        
        ApexPages.StandardController sc = new ApexPages.StandardController(lead);
        
        CognizantLeadScopingController leadScopingController = new CognizantLeadScopingController(sc);        
        leadScopingController.file1 = file1;
        leadScopingController.fileName1 = fileName1;
        leadScopingController.save();
                
        Test.stopTest();
        
        //Validate that the Lead record was created
        Lead testLead = [SELECT Id, LastName, Company FROM Lead LIMIT 1];
        System.assertEquals('Jones', testLead.LastName, 'Expectation is that the leads Last Name equals Jones');
    }
    
    @isTest
    static void testInsertingLeadError() {
 		
        Test.startTest();
        
        Lead lead = new Lead();
        
        ApexPages.StandardController sc = new ApexPages.StandardController(lead);
        
        CognizantLeadScopingController leadScopingController = new CognizantLeadScopingController(sc);
        leadScopingController.save();
        
        Test.stopTest();
    }
    
    @isTest
    static void testUploadFileError() {
        
        Test.startTest();
        
        Blob file = Blob.valueOf('Garbage2');
        String fileName = null;
        
        CognizantLeadScopingController leadScopingController = new CognizantLeadScopingController();

        try { 
        	leadScopingController.uploadFile(file, fileName, null);
            
            System.assert(false, 'The expectation is that the uploadFile call will fail because the fileName needs a value.');
        } catch(Exception e) {
            String errorMsg = e.getMessage();
            System.assert(errorMsg.contains('Required fields are missing:'), 'The expectation is that the uploadFile call fails because the fileName requires a value.');
        }
                
        Test.stopTest();
    }    
}