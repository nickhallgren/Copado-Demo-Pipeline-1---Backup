/************************************************************************************************************************************************************************************
Class Name: NZCBulkCreatePortalUsers
Created By: Ravi Kodumuri
Created on: 22-June-2024 
Description: Used to create Portal users and contacts for selected suppliers.
Test Class: NZCBulkCreatePortalUsersTest
Called From: NZC_Onboard_Suppliers_to_Portal Screen Flow
*************************************************************************************************************************************************************************************
Change Log:

*************************************************************************************************************************************************************************************/
public class NZCBulkCreatePortalUsers {
    
    /************************************************************************************************************************************************************************************
Method Name: getBulkCreateSupplierUser
Description: Main method driving the creation of users and contacts.
Inputs: List<inputWrapper> inputWrapper - Contains Supplier Records to be created as Users and Contacts
Ouptuts: List<outputWrapper> - Contains the result after process.
*************************************************************************************************************************************************************************************/
    @InvocableMethod(label='Onboard Suppliers to Portal')
    public static List<outputWrapper> getBulkCreateSupplierUser(List<inputWrapper> inputWrapper) {
        
        if(inputWrapper == null || inputWrapper.size() == 0) return null;
        
        List<Supplier> lstSupplierRecordIds = inputWrapper[0].supplierIds;
        
        List<outputWrapper> lstOfOutputWrapper = new List<outputWrapper>();
        
        outputWrapper finalResultWrapper = new outputWrapper();
        
        finalResultWrapper.suppliersWithNoEmailExists = false;
        finalResultWrapper.suppliersWithNoScorecardExists = false;
        finalResultWrapper.suppliersAlreadyOnboarded = false;
        finalResultWrapper.suppliersSuccessfullyOnboarded = false;
        
        finalResultWrapper.lstSupplierWithNoEmail = new List<Supplier>();
        finalResultWrapper.lstSupplierWithNoScorecards = new List<Supplier>();
        finalResultWrapper.lstSuppliersAlreadyOnboarded = new List<Supplier>();
        finalResultWrapper.lstSuppliersSuccessfullyOnboarded = new List<Supplier>();
        
        Profile partnerProfile = new Profile();
        partnerProfile = [SELECT Id, Name FROM Profile WHERE Name = :System.Label.NZC_Onboard_Suppliers_to_Portal_ProfileName LIMIT 1];
        
        Set<Id> setOfAccountIds = new Set<Id>();
        Set<String> setOfEmails = new Set<String>();
        
        Map<Id, Id> mapOfSupplierContacts = new Map<Id, Id>();
        Map<String, Id> mapOfContactsWithAccountAndEmailKey = new Map<String, Id>();
        Map<Id, Contact> mapOfContacts = new Map<Id, Contact>();
        Set<Id> setOfContactsAlreadyOnboardedAsUsers = new Set<Id>();
        List<Contact> contactsToCreateAsUsers = new List<Contact>();
        List<Supplier> suppliersToCreateContacts = new List<Supplier>();
        List<Contact> contactsToCreate = new List<Contact>();
        List<User> usersToCreate = new List<User>();
        Set<Id> userIdSet = new Set<Id>();
        
        //Fetch all the suppliers passed from button and query AccountId, Name, Contact Email
        Map<Id, Supplier> mapOfSupplier = new Map<Id, Supplier>([SELECT Id, AccountId, Name, NZC_Contact_Email__c, NZC_Status__c FROM Supplier WHERE Id IN :lstSupplierRecordIds]);
        
        //Loop through the fetched suppliers to identify unique accounts and unique emails
        for(Supplier tempSupplier : mapOfSupplier.values()){
            if (tempSupplier.AccountId != null) {
                setOfAccountIds.add(tempSupplier.AccountId);
            }
            if (String.isNotBlank(tempSupplier.NZC_Contact_Email__c)) {
                setOfEmails.add(tempSupplier.NZC_Contact_Email__c);
            }
        }
        
        //Loop through the SustainabilityScorecard related to the Suppliers to find the contacts already related to SustainabilityScorecard
        for (SustainabilityScorecard tempSustainabilityScorecard : [SELECT Id, SupplierContactId, SupplierId FROM SustainabilityScorecard WHERE SupplierId IN :lstSupplierRecordIds AND IsCurrentSupplierScorecard = TRUE]) {
            mapOfSupplierContacts.put(tempSustainabilityScorecard.SupplierId, tempSustainabilityScorecard.SupplierContactId);
        }
        
        //Identify contacts with Email based on 
        //1. Contacts matching the AccountIds and Emails found in Suppliers OR
        //2. Contacts found in SustainabilityScorecards related to Suppliers. 
        for (Contact tempContact : [SELECT Id, AccountId, FirstName, LastName, Email FROM Contact WHERE ((AccountId IN :setOfAccountIds AND Email IN :setOfEmails) OR ID IN :mapOfSupplierContacts.values()) AND Email <> NULL]) {
            mapOfContactsWithAccountAndEmailKey.put(tempContact.AccountId+'__'+tempContact.Email, tempContact.Id);
            mapOfContacts.put(tempContact.Id, tempContact);
        }
        
        //Fetch users that are already linked with the contacts found before
        for (User tempUser : [SELECT Id, ContactId FROM User WHERE contactID IN :mapOfContacts.values()]) {
            setOfContactsAlreadyOnboardedAsUsers.add(tempUser.ContactId);
        }
        
        //Process Suppliers with all the data fetched
        for (Supplier tempSupplier : mapOfSupplier.values()) {
            
            //If Contact Email is Null in Supplier then add the supplier in lstSupplierWithNoEmail
            if (tempSupplier.NZC_Contact_Email__c == null) {
                finalResultWrapper.lstSupplierWithNoEmail.add(tempSupplier);
                finalResultWrapper.suppliersWithNoEmailExists = true;
                continue;
            }
            
            //If a SustainabilityScorecard is found for Supplier
            if (mapOfSupplierContacts.containsKey(tempSupplier.Id)) {
                
                //Fetch the contact found in SustainabilityScorecard
                Id contactId = mapOfSupplierContacts.get(tempSupplier.Id);
                
                //Create a key with AccountId and the Email found in Supplier
                String supplierNameAndEmailKey = tempSupplier.AccountId+'__'+tempSupplier.NZC_Contact_Email__c;
                
                //If the contact is not found in SustainabilityScorecard but key is found in the contacts with AccountId and Email 
                //Then set the contactId to the found contact
                if(contactId == null && mapOfContactsWithAccountAndEmailKey.get(supplierNameAndEmailKey) != null){
                    contactId = mapOfContactsWithAccountAndEmailKey.get(supplierNameAndEmailKey);
                }
                
                //If the contactId is not null but the contactId is found in the users that are already onboarded
                //Then add the supplier to lstSuppliersAlreadyOnboarded list
                if(contactId != null && setOfContactsAlreadyOnboardedAsUsers.contains(contactId)){
                    finalResultWrapper.lstSuppliersAlreadyOnboarded.add(tempSupplier);
                    finalResultWrapper.suppliersAlreadyOnboarded = true;
                    continue;
                }
                
                //If the contactId is null then add the supplier to suppliersToCreateContacts list to create new contacts
                if(contactId == null || mapOfContacts.get(contactId) == null) {
                    suppliersToCreateContacts.add(tempSupplier);
                }
                //If the contactId is not null and the contact is fetched 
                //Then add the contact to contactsToCreateAsUsers list to create new users
                else {
                    contactsToCreateAsUsers.add(mapOfContacts.get(contactId));
                }
                
                //Add the supplier to dfcxt as Suppliers Successfully Onboarded
                tempSupplier.NZC_Status__c = System.Label.NZC_Onboard_Suppliers_to_Portal_Supplier_Status;
                finalResultWrapper.lstSuppliersSuccessfullyOnboarded.add(tempSupplier);
                finalResultWrapper.suppliersSuccessfullyOnboarded = true;
                
            } 
            //If a SustainabilityScorecard is not found for Supplier then add the supplier in lstSupplierWithNoScorecards
            else {
                finalResultWrapper.lstSupplierWithNoScorecards.add(tempSupplier);
                finalResultWrapper.suppliersWithNoScorecardExists = true;
                continue;
            }
        }
        
        //If suppliers to create new contacts exist, then create new contacts and add them to contactsToCreate list
        if(suppliersToCreateContacts.size() > 0){
            for(Supplier tempSupplier : suppliersToCreateContacts){
                Contact newContact = new Contact();
                newContact.LastName = tempSupplier.Name;
                newContact.AccountId = tempSupplier.AccountId;
                newContact.Email = tempSupplier.NZC_Contact_Email__c;
                newContact.NZC__c = True;
                contactsToCreate.add(newContact);
            }
            if(contactsToCreate.size() > 0){
                insert contactsToCreate;
                contactsToCreateAsUsers.addAll(contactsToCreate);
            }
        }
        
        //If contacts exists to create as users then create users
        if(contactsToCreateAsUsers.size() > 0){
            for(Contact tempContact : contactsToCreateAsUsers){
                String contactId = tempContact.Id;
                User newUser = new User();
                newUser.Username = tempContact.LastName.replace(' ', '_') + Integer.valueof((Math.random() * 10000)) + '@nzc.com';
                newUser.ContactId = tempContact.Id;
                newUser.ProfileId = partnerProfile.Id;
                newUser.Alias = contactId.substring(contactId.length()-3,contactId.length());
                newUser.Email = tempContact.Email;
                newUser.EmailEncodingKey = 'UTF-8';
                newUser.LastName = tempContact.LastName;
                newUser.FirstName = tempContact.FirstName;
                newUser.CommunityNickname = contactId.substring(contactId.length()-8,contactId.length());
                newUser.TimeZoneSidKey = 'America/Los_Angeles';
                newUser.LocaleSidKey = 'en_US';
                newUser.LanguageLocaleKey = 'en_US';
                newUser.User_Type__c = System.Label.NZC_Onboard_Suppliers_to_Portal_UserType;
                usersToCreate.add(newUser);
                System.debug('User Alias :' + newUser.Alias);
            }
            if(usersToCreate.size() > 0){
                insert usersToCreate;
                userIdSet = new Map<Id,User>(usersToCreate).keySet();
                assignRequiredPermissionToUsers(userIdSet);
            }
        }
        
        lstOfOutputWrapper.add(finalResultWrapper);
        return lstOfOutputWrapper;
    }
    public class outputWrapper {
        @InvocableVariable
        public Boolean suppliersWithNoEmailExists;
        @InvocableVariable
        public Boolean suppliersWithNoScorecardExists;
        @InvocableVariable
        public Boolean suppliersAlreadyOnboarded;
        @InvocableVariable
        public Boolean suppliersSuccessfullyOnboarded;
        
        @InvocableVariable
        public List<Supplier> lstSupplierWithNoEmail;
        @InvocableVariable
        public List<Supplier> lstSupplierWithNoScorecards;
        @InvocableVariable
        public List<Supplier> lstSuppliersAlreadyOnboarded;
        @InvocableVariable
        public List<Supplier> lstSuppliersSuccessfullyOnboarded;
    }
    
    public class inputWrapper {
        @InvocableVariable
        public List<Supplier> supplierIds;
    }
    
    /************************************************************************************************************************************************************************************
Method Name: assignPermissionSetToUsers
Description: Assigns Permission Sets to the users that are created. 
A future method is created as PermissionSetAssignment is a non setup object and Salesforce will throw Mixed DML Operations Error
Inputs: Set<Id> userIdSet - Contains Set of userIds that should be assigned with permission set
Ouptuts: void.
*************************************************************************************************************************************************************************************/ 
    @future
    public static void assignRequiredPermissionToUsers(Set<Id> userIdSet) {
        if(userIdSet == null || userIdSet.isEmpty()) return;
        try{
            List<PermissionSetAssignment> permissionSetAssignmentsToInsert = new List<PermissionSetAssignment>();
            PermissionSet externalEngagementPS = new PermissionSet();
            externalEngagementPS = [SELECT Id FROM PermissionSet WHERE Name = :System.Label.NZC_Onboard_Suppliers_to_Portal_PermissionSet_To_Assign];
            
            List<GroupMember> publicGroupAssignmentToInsert = new List<GroupMember>();
            Group supplierPortalPG = new Group();
            supplierPortalPG = [SELECT Id FROM Group WHERE DeveloperName = :System.Label.NZC_Onboard_Suppliers_to_Portal_ApprovalProcess_To_Assign];
            
            for(Id tempUserId : userIdSet){
                if (externalEngagementPS != null){
                    permissionSetAssignmentsToInsert.add(new PermissionSetAssignment(AssigneeId = tempUserId, PermissionSetId = externalEngagementPS.Id));
                }
                if (supplierPortalPG != null){
                    publicGroupAssignmentToInsert.add(new GroupMember(UserOrGroupId = tempUserId, GroupId = supplierPortalPG.Id));
                }
            }
            if(!permissionSetAssignmentsToInsert.isEmpty()){
                insert permissionSetAssignmentsToInsert;
            }
            if(!publicGroupAssignmentToInsert.isEmpty()){
                insert publicGroupAssignmentToInsert;
            }   
        } catch(Exception ex) {
            System.debug('Exception: ' + ex.getMessage());
            NZCErrorLog.logError(ex.getMessage()+' '+ex.getStackTraceString());
        }
    }
}