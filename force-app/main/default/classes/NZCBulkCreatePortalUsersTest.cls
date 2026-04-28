@isTest
public class NZCBulkCreatePortalUsersTest {
    @TestSetup
    static void makeData(){
        List<Account> acList = new List<Account>();
        Account ac1 = new Account(Name='Test Account1');
        acList.add(ac1);
        Account ac2 = new Account(Name='Test Account2');
        acList.add(ac2);
        Account ac3 = new Account(Name='Test Account3');
        acList.add(ac3);
        Account ac4 = new Account(Name='Test Account4');
        acList.add(ac4);
        Account ac5 = new Account(Name='Test Account5');
        acList.add(ac5);
        Account ac6 = new Account(Name='Test Account6');
        acList.add(ac6);
        insert acList;
        List<Supplier> supList= new List<Supplier>();
        Supplier sp1 = new Supplier(AccountId=acList[0].Id,Name='Supplier Null Email');
        supList.add(sp1);
        Supplier sp2 = new Supplier(AccountId=acList[1].Id,Name='Supplier with Email',NZC_Contact_Email__c='test.contact@test.com');
        supList.add(sp2);
        Supplier sp3 = new Supplier(AccountId=acList[2].Id,Name='Supplier with Scorecard',NZC_Contact_Email__c='test_contact@test.com');
        supList.add(sp3);
        Supplier sp4 = new Supplier(AccountId=acList[3].Id,Name='Supplier ScoreCard Null Contact',NZC_Contact_Email__c='test_contact@test.com');
        supList.add(sp4);
        Supplier sp5 = new Supplier(AccountId=acList[4].Id,Name='Supplier ScoreCard Create Contact',NZC_Contact_Email__c='test_contact@test.com');
        supList.add(sp5);
        Supplier sp6 = new Supplier(AccountId=acList[5].Id,Name='Supplier ScoreCard No Email On Contact',NZC_Contact_Email__c='test_contact@test.com');
        supList.add(sp6);
        insert supList;

        
        //when contact is linked to account and scorecard both --> getCreateSupplierUser_WithScorecardTest
        Contact ct2 = new Contact(FirstName='Test2',LastName='Contact',Email='test_contact@test.com',AccountId=acList[2].Id);
        insert ct2;
        SustainabilityScorecard sc2 = new SustainabilityScorecard(Name='Test Scorecard',SupplierId=supList[2].Id,SupplierContactId=ct2.Id, IsCurrentSupplierScorecard = true);
        insert sc2;
        
        //When the supplier scorecard does not have contact email --> getCreateSupplierUser_WithScorecard_NoContactId_Test
        Contact ct3 = new Contact(FirstName='Test3',LastName='Contact',AccountId=acList[3].Id);
        insert ct3;
        SustainabilityScorecard sc3 = new SustainabilityScorecard(Name='Test Scorecard',SupplierId=supList[3].Id, IsCurrentSupplierScorecard = true);
        insert sc3;
        
        //When no contact record is present on the account -->getCreateSupplierUser_WithScorecard_CreateNewContact_Test
        SustainabilityScorecard sc4 = new SustainabilityScorecard(Name='Test Scorecard',SupplierId=supList[4].Id, IsCurrentSupplierScorecard = true);
        insert sc4;
        
        //contact is linked to scorecard but does not have email id --> getCreateSupplierUser_WithScorecard_NoEmailOnContact_Test
        Contact ct5 = new Contact(FirstName='Test5',LastName='Contact',AccountId=acList[5].Id);
        insert ct5;
        SustainabilityScorecard sc5 = new SustainabilityScorecard(Name='Test5 Scorecard',SupplierId=supList[5].Id,SupplierContactId=ct5.Id, IsCurrentSupplierScorecard = true);
        insert sc5;
        
    }
    
    @isTest
    static void getCreateSupplierUser_NullContactEmailTest(){
        Supplier sp = [SELECT Id FROM Supplier WHERE Name='Supplier Null Email' LIMIT 1];
        test.startTest();
        NZCBulkCreatePortalUsers.inputWrapper flowInputs = new NZCBulkCreatePortalUsers.inputWrapper();
        flowInputs.supplierIds = new List<Supplier>();
        flowInputs.supplierIds.add(sp);
        List<NZCBulkCreatePortalUsers.outputWrapper> flowOuputs = NZCBulkCreatePortalUsers.getBulkCreateSupplierUser(new List<NZCBulkCreatePortalUsers.inputWrapper>{flowInputs});
        test.stopTest();
    }
    
    @isTest
    static void getCreateSupplierUser_NoScorecardTest(){
        Supplier sp = [SELECT Id FROM Supplier WHERE Name='Supplier with Email' LIMIT 1];
        test.startTest();
        NZCBulkCreatePortalUsers.inputWrapper flowInputs = new NZCBulkCreatePortalUsers.inputWrapper();
        flowInputs.supplierIds = new List<Supplier>();
        flowInputs.supplierIds.add(sp);
        List<NZCBulkCreatePortalUsers.outputWrapper> flowOuputs = NZCBulkCreatePortalUsers.getBulkCreateSupplierUser(new List<NZCBulkCreatePortalUsers.inputWrapper>{flowInputs});
        test.stopTest();
    }
    
    @isTest
    static void getCreateSupplierUser_WithScorecardTest(){
        Supplier sp = [SELECT Id FROM Supplier WHERE Name='Supplier with Scorecard' LIMIT 1];
        test.startTest();
        NZCBulkCreatePortalUsers.inputWrapper flowInputs = new NZCBulkCreatePortalUsers.inputWrapper();
        flowInputs.supplierIds = new List<Supplier>();
        flowInputs.supplierIds.add(sp);
        List<NZCBulkCreatePortalUsers.outputWrapper> flowOuputs = NZCBulkCreatePortalUsers.getBulkCreateSupplierUser(new List<NZCBulkCreatePortalUsers.inputWrapper>{flowInputs});
        test.stopTest();
    }
    
    @isTest
    static void getCreateSupplierUser_WithScorecard_NoContactId_Test(){
        Supplier sp = [SELECT Id FROM Supplier WHERE Name='Supplier ScoreCard Null Contact' LIMIT 1];
        test.startTest();
        NZCBulkCreatePortalUsers.inputWrapper flowInputs = new NZCBulkCreatePortalUsers.inputWrapper();
        flowInputs.supplierIds = new List<Supplier>();
        flowInputs.supplierIds.add(sp);
        List<NZCBulkCreatePortalUsers.outputWrapper> flowOuputs = NZCBulkCreatePortalUsers.getBulkCreateSupplierUser(new List<NZCBulkCreatePortalUsers.inputWrapper>{flowInputs});
        test.stopTest();
    }
    
    @isTest
    static void getCreateSupplierUser_WithScorecard_CreateNewContact_Test(){
        Supplier sp = [SELECT Id FROM Supplier WHERE Name='Supplier ScoreCard Create Contact' LIMIT 1];
        test.startTest();
        NZCBulkCreatePortalUsers.inputWrapper flowInputs = new NZCBulkCreatePortalUsers.inputWrapper();
        flowInputs.supplierIds = new List<Supplier>();
        flowInputs.supplierIds.add(sp);
        List<NZCBulkCreatePortalUsers.outputWrapper> flowOuputs = NZCBulkCreatePortalUsers.getBulkCreateSupplierUser(new List<NZCBulkCreatePortalUsers.inputWrapper>{flowInputs});
        test.stopTest();
    }
    
    @isTest
    static void getCreateSupplierUser_WithScorecard_NoEmailOnContact_Test(){
        Supplier sp = [SELECT Id FROM Supplier WHERE Name='Supplier ScoreCard No Email On Contact' LIMIT 1];
        test.startTest();
        NZCBulkCreatePortalUsers.inputWrapper flowInputs = new NZCBulkCreatePortalUsers.inputWrapper();
        flowInputs.supplierIds = new List<Supplier>();
        flowInputs.supplierIds.add(sp);
        List<NZCBulkCreatePortalUsers.outputWrapper> flowOuputs = NZCBulkCreatePortalUsers.getBulkCreateSupplierUser(new List<NZCBulkCreatePortalUsers.inputWrapper>{flowInputs});
        test.stopTest();
    }
}