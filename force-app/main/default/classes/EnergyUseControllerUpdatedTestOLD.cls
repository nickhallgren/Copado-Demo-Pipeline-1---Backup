@isTest
public class EnergyUseControllerUpdatedTestOLD {
    /******************************************************************************
Class Name: EnergyUseControllerUpdatedOLD
Created By : Harshvardhan Tiwari
Created : 11-Oct-23
Description : Created to get the metadata records to arrange them and show them on the data entry form, 
send the energy use record for approval, link the uploaded file to the record and to link the refrigerant record with
its emission factor
*************************************************************************/
    
    @testSetup
    static void createTestData(){
        //User u = [SELECT Id FROM User WHERE Id =: UserInfo.getUserId()];

        List<Profile> adminProfile = [SELECT Id FROM Profile WHERE name='System Administrator' LIMIT 1];
        User adminUser = new User(
            UserName = 'systemAdministrator@cognizant.com.nzc98',
            FirstName = 'System',
            LastName = 'Administrator',
            Alias = 'sysAdmin',
            email = 'test.sysAd@adminUser.com',
            ProfileId = adminProfile[0].Id,
            EmailEncodingKey = 'UTF-8',
            TimeZoneSidKey = 'America/Los_Angeles',
            LocaleSidKey = 'en_US',
            //User_Type__c = 'Data Approver',
            LanguageLocaleKey = 'en_US'
        );
        insert adminUser;

        List<Profile> profileDP = [SELECT Id FROM Profile WHERE name='Cog Net Zero Cloud Profile' LIMIT 1];
        User daUser = new User(
            UserName = 'dataApprover@cognizant.com.nzc98',
            FirstName = 'Test',
            LastName = 'Data Approver User',
            Alias = 'testDA',
            email = 'test@dauser.com',
            ProfileId = profileDP[0].Id,
            EmailEncodingKey = 'UTF-8',
            TimeZoneSidKey = 'America/Los_Angeles',
            LocaleSidKey = 'en_US',
            User_Type__c = 'Data Approver',
            LanguageLocaleKey = 'en_US'
        );
        insert daUser;
        
        User dvUser = new User(
            UserName = 'datavalidator@cognizant.com.nzc97',
            FirstName = 'Test',
            LastName = 'Data Validator User',
            Alias = 'testDV',
            email = 'test@dvuser.com',
            ProfileId = profileDP[0].Id,
            EmailEncodingKey = 'UTF-8',
            TimeZoneSidKey = 'America/Los_Angeles',
            LocaleSidKey = 'en_US',
            User_Type__c = 'Data Validator',
            LanguageLocaleKey = 'en_US'
        );
        insert dvUser;
        
        User dpUser = new User(
            UserName = 'dataprocessor@cognizant.com.nzc99',
            FirstName = 'Test',
            LastName = 'Data Processor User',
            Alias = 'testDP',
            email = 'test@dpuser.com',
            ProfileId = profileDP[0].Id,
            EmailEncodingKey = 'UTF-8',
            TimeZoneSidKey = 'America/Los_Angeles',
            LocaleSidKey = 'en_US',
            User_Type__c = 'Data Processor',
            LanguageLocaleKey = 'en_US'
        );
        insert dpUser;

        //Fetch AMER group
        Group amerGroup = [SELECT Id,DeveloperName FROM Group WHERE DeveloperName='AMER_Business_Region' LIMIT 1];
        //Group amerGroup = new Group(Label='AMER Business Region',Name='AMER_Business_Region');

        //Add Data processor user into AMER group as the Site information record will be having business region as AMER
        GroupMember gp = new GroupMember();
        gp.UserOrGroupId = dpUser.Id;
        gp.GroupId = amerGroup.Id;
        System.runAs(adminUser){
            insert gp;
        }
        
        
        OtherEmssnFctrSet oefs = new OtherEmssnFctrSet();
        oefs.Name = 'Test other emissions factor set';
        insert oefs;
		system.debug('oefs id:'+oefs.Id);
        ElectricityEmssnFctrSet eefs = new ElectricityEmssnFctrSet();
        eefs.Name = 'Test electricity emissions factor';
        eefs.Co2eEmissionRate = 692.570564;
        eefs.Co2EmissionRate = 689.3;
        eefs.Ch4EmissionRate = 0.012;
        eefs.N2oEmissionRate = 0.01107;
        eefs.MktBsdCo2eEmissionRate = 692.570564;
        eefs.LocationBasedOtherFuelMixPct = 100;
        eefs.MarketBasedOtherFuelMixPct = 100;
        insert eefs;
        system.debug('eefs id:'+eefs.Id);
        StnryAssetEnvrSrc si = new StnryAssetEnvrSrc();
        si.Name = 'Test Site Info';
        si.OtherEmssnFctrId = oefs.Id;
        si.ElectricityEmssnFctrId = eefs.Id;
        si.Active__c = true;
        si.BusinessRegion = 'AMER';
        si.I_have_reviewed_all_fields_and_data__c = true;
        si.Status__c = 'Approved';
        si.Data_Approver__c = daUser.Id;
        si.Data_Validator__c = dvUser.Id;
        si.Country = 'IN';
        insert si;
        
        StnryAssetEnvrSrc si2 = new StnryAssetEnvrSrc();
        si2.Name = 'Test Site Info 2';
        si2.OtherEmssnFctrId = oefs.Id;
        si2.ElectricityEmssnFctrId = eefs.Id;
        si2.Active__c = true;
        si2.BusinessRegion = 'AMER';
        si2.I_have_reviewed_all_fields_and_data__c = true;
        si2.Status__c = 'Approved';
        si2.Data_Approver__c = daUser.Id;
        si2.Data_Validator__c = dvUser.Id;
        si2.Country = 'US';
        si2.State = 'NJ';
        insert si2;
        
        StnryAssetEnvrSrcShare siShare = new StnryAssetEnvrSrcShare();
        siShare.ParentId = si.Id;
        siShare.UserOrGroupId = dpUser.Id;
     	siShare.AccessLevel = 'Read';
        siShare.RowCause = Schema.StnryAssetEnvrSrcShare.RowCause.Manual;
        Database.insert(siShare,false);
        
        StnryAssetEnvrSrcShare siShare2 = new StnryAssetEnvrSrcShare();
        siShare2.ParentId = si2.Id;
        siShare2.UserOrGroupId = dpUser.Id;
     	siShare2.AccessLevel = 'Read';
        siShare2.RowCause = Schema.StnryAssetEnvrSrcShare.RowCause.Manual;
        Database.insert(siShare2,false);
        
        PcmtEmssnFctrSet pefs = new PcmtEmssnFctrSet();
        pefs.Name = 'Test pefs';
        pefs.EmissionFactorUpdateYear = '2022';
        insert pefs;
        
        PcmtEmssnFctrSetShare pefsShare = new PcmtEmssnFctrSetShare();
        pefsShare.ParentId = pefs.Id;
        pefsShare.UserOrGroupId = dpUser.Id;
        pefsShare.AccessLevel = 'Read';
        pefsShare.RowCause = Schema.PcmtEmssnFctrSetShare.RowCause.Manual;
        Database.insert(pefsShare,false);
        
        List<RecordType> s3efRecordType = [Select Id, Name From RecordType WHERE Name = 'EPA Procurement Emission Factor' LIMIT 1];
        
        Scope_3_Emission_Factor__c s3ef = new Scope_3_Emission_Factor__c();
        s3ef.RecordTypeId = s3efRecordType[0].Id;
        s3ef.Name = 'Test s3ef';
        s3ef.Procurement_Emissions_Factor_Set__c = pefs.Id;
        s3ef.Status__c = 'Approved';
        insert s3ef;
                        
        StnryAssetEnrgyUse eu = new StnryAssetEnrgyUse();
        eu.StnryAssetEnvrSrcId = si.Id;
        eu.Procurement_Emissions_Factor_Set__c = pefs.Id;
        eu.Name = 'Test Energy Use';
        eu.FuelConsumption = 100;
        eu.FuelType	= 'Electricity';
        eu.FuelConsumptionUnit = 'kWh';
        eu.StartDate = Date.today();
        eu.EndDate = Date.today() + 1;
        eu.I_have_reviewed_all_fields_and_data__c = true;
        insert eu;

        // //create 6 RefrigerantEmssnFctr records as per names used in lwc
        // List<RefrigerantEmssnFctr> listOfRefrigerantEmssnFctr = new List<RefrigerantEmssnFctr>();
        
        // for(Integer i=0;i<6;i++){
        //     RefrigerantEmssnFctr testObj = new RefrigerantEmssnFctr();
        //     testObj.Name = 'Test Ref Emission Factor '+i;
        //     testObj.EmissionFactorDataSource = 'Testing source';
        //     testObj.GlblWarmingPotInKgCo2eKg = 1810;
        //     listOfRefrigerantEmssnFctr.add(testObj);
        // }
        // insert listOfRefrigerantEmssnFctr;

        // //create Emission factor record with 6 records referred in those fields
        // Emission_Factor__c ef = new Emission_Factor__c();
        // ef.Name = 'Test Site Info';//'Test Emission Factor';
        // ef.Country__c ='Test Country';
        // ef.Electricity_Emissions_Factor_Set__c = eefs.id;
        // ef.CFC_R22_Refrigerant_Emissions_Factor__c = listOfRefrigerantEmssnFctr[0].Id;
        // ef.HFC_125_Refrigerant_Emissions_Factor__c = listOfRefrigerantEmssnFctr[1].Id;
        // ef.HFC_125_Refrigerant_Emissions_Factor__c = listOfRefrigerantEmssnFctr[2].Id;
        // ef.HFC_R32_Refrigerant_Emissions_Factor__c = listOfRefrigerantEmssnFctr[3].Id;
        // ef.HFC_R407c_Refrigerant_Emissions_Factor__c = listOfRefrigerantEmssnFctr[4].Id;
        // ef.HFC_R410a_Refrigerant_Emissions_Factor__c = listOfRefrigerantEmssnFctr[5].Id;
        // ef.Last_Site_Information_Records_Updated_On__c = System.today();
        // ef.State__c = 'Test State';
        // insert ef;

    }
    
   
    @isTest
    public static void linkFileTest(){
        User u = [select Id from User where UserName='dataprocessor@cognizant.com.nzc99' limit 1];
        StnryAssetEnrgyUse eu4 = [SELECT Id FROM StnryAssetEnrgyUse WHERE Name='Test Energy Use' LIMIT 1];
        String ghi;
        Test.startTest();
        System.runAs(u){
            //Create a new file
            ContentVersion newFile = new ContentVersion();
            newFile.PathOnClient = 'TestFile';
            newFile.Title = 'TestFile';
            newFile.VersionData = Blob.valueOf('sample content');
            insert newFile;
            ContentVersion insertedFile = [SELECT Id, ContentDocumentId FROM ContentVersion WHERE Title = 'TestFile' LIMIT 1];
            ghi = EnergyUseControllerUpdatedOLD.linkFile(insertedFile.ContentDocumentId, eu4.Id);
        }
        Test.stopTest();
        System.assertNotEquals('File not linked', ghi,'Error in linking file');
    }
    
    @isTest
    public static void getMetadataInformationTest(){
        User u = [select Id from User where UserName='dataprocessor@cognizant.com.nzc99' limit 1];
        EnergyUseControllerUpdatedOLD.EnergyUseMetadataWrapper abc = new EnergyUseControllerUpdatedOLD.EnergyUseMetadataWrapper();
        Test.startTest();
        System.runAs(u){
            User daUser = [select Id from User where UserName='dataApprover@cognizant.com.nzc98' limit 1];
            User dvUser = [select Id from User where UserName='datavalidator@cognizant.com.nzc97' limit 1];

            /*OtherEmssnFctrSet oefs = new OtherEmssnFctrSet();
            oefs.Name = 'Test other emissions factor set';
            insert oefs;
			system.debug('oefs id:'+oefs.Id);
            ElectricityEmssnFctrSet eefs = new ElectricityEmssnFctrSet();
            eefs.Name = 'Test electricity emissions factor';
            eefs.Co2eEmissionRate = 692.570564;
            eefs.Co2EmissionRate = 689.3;
            eefs.Ch4EmissionRate = 0.012;
            eefs.N2oEmissionRate = 0.01107;
            eefs.MktBsdCo2eEmissionRate = 692.570564;
            eefs.LocationBasedOtherFuelMixPct = 100;
            eefs.MarketBasedOtherFuelMixPct = 100;
            insert eefs;
            system.debug('eefs id:'+eefs.Id);
            StnryAssetEnvrSrc si = new StnryAssetEnvrSrc();
            si.Name = 'Test Site Info';
            si.OtherEmssnFctrId = oefs.Id;
            si.ElectricityEmssnFctrId = eefs.Id;
            si.Active__c = true;
            si.BusinessRegion = 'AMER';
            si.I_have_reviewed_all_fields_and_data__c = true;
            si.Status__c = 'Approved';
            si.Data_Approver__c = daUser.Id;
            si.Data_Validator__c = dvUser.Id;
            si.Country = 'IN';
            //si.Status__c = 'Approved';
            Databas.insert(si);*/
            
            List<RefrigerantEmssnFctr> listOfRefrigerantEmssnFctr = new List<RefrigerantEmssnFctr>();
            
            for(Integer i=0;i<6;i++){
                RefrigerantEmssnFctr testObj = new RefrigerantEmssnFctr();
                testObj.Name = 'TestRef '+i+' Emmsn';
                testObj.EmissionFactorDataSource = 'Testing source';
                testObj.GlblWarmingPotInKgCo2eKg = 1810;
                listOfRefrigerantEmssnFctr.add(testObj);
            }
            insert listOfRefrigerantEmssnFctr;

            ElectricityEmssnFctrSet eefs = [SELECT Id FROM ElectricityEmssnFctrSet WHERE Name='Test electricity emissions factor' LIMIT 1];
            //create Emission factor record with 6 records referred in those fields
            Emission_Factor__c ef = new Emission_Factor__c();
            ef.Name = 'Test Site Info';//'Test Emission Factor';
            ef.Country__c ='IN';
            ef.Electricity_Emissions_Factor_Set__c = eefs.id;
            ef.CFC_R22_Refrigerant_Emissions_Factor__c = listOfRefrigerantEmssnFctr[0].Id;
            ef.HFC_125_Refrigerant_Emissions_Factor__c = listOfRefrigerantEmssnFctr[1].Id;
            ef.HFC_125_Refrigerant_Emissions_Factor__c = listOfRefrigerantEmssnFctr[2].Id;
            ef.HFC_R32_Refrigerant_Emissions_Factor__c = listOfRefrigerantEmssnFctr[3].Id;
            ef.HFC_R407c_Refrigerant_Emissions_Factor__c = listOfRefrigerantEmssnFctr[4].Id;
            ef.HFC_R410a_Refrigerant_Emissions_Factor__c = listOfRefrigerantEmssnFctr[5].Id;
            ef.Last_Site_Information_Records_Updated_On__c = System.today();
            ef.Status__c = 'Approved';
            insert ef;

			StnryAssetEnvrSrc si = [SELECT Id,Name FROM StnryAssetEnvrSrc WHERE Name='Test Site Info' LIMIT 1];
            system.debug('si '+si);
            abc = EnergyUseControllerUpdatedOLD.getMetadataInformation(si.Id);
        }
        Test.stopTest();
        System.assertNotEquals(null, abc,'No metadata record found');
    }
    
    
    @isTest
    public static void getMetadataInformation_USTest(){
        User u = [select Id from User where UserName='dataprocessor@cognizant.com.nzc99' limit 1];
        EnergyUseControllerUpdatedOLD.EnergyUseMetadataWrapper abc = new EnergyUseControllerUpdatedOLD.EnergyUseMetadataWrapper();
        Test.startTest();
        System.runAs(u){
            User daUser = [select Id from User where UserName='dataApprover@cognizant.com.nzc98' limit 1];
            User dvUser = [select Id from User where UserName='datavalidator@cognizant.com.nzc97' limit 1];

            List<RefrigerantEmssnFctr> listOfRefrigerantEmssnFctr = new List<RefrigerantEmssnFctr>();
            
            for(Integer i=0;i<6;i++){
                RefrigerantEmssnFctr testObj = new RefrigerantEmssnFctr();
                testObj.Name = 'TestRef '+i+' Emmsn';
                testObj.EmissionFactorDataSource = 'Testing source';
                testObj.GlblWarmingPotInKgCo2eKg = 1810;
                listOfRefrigerantEmssnFctr.add(testObj);
            }
            insert listOfRefrigerantEmssnFctr;

            ElectricityEmssnFctrSet eefs = [SELECT Id FROM ElectricityEmssnFctrSet WHERE Name='Test electricity emissions factor' LIMIT 1];
            //create Emission factor record with 6 records referred in those fields
            Emission_Factor__c ef = new Emission_Factor__c();
            ef.Name = 'Test Site Info';//'Test Emission Factor';
            ef.Country__c ='US';
            ef.State__c='NJ';
            ef.Electricity_Emissions_Factor_Set__c = eefs.id;
            ef.CFC_R22_Refrigerant_Emissions_Factor__c = listOfRefrigerantEmssnFctr[0].Id;
            ef.HFC_125_Refrigerant_Emissions_Factor__c = listOfRefrigerantEmssnFctr[1].Id;
            ef.HFC_125_Refrigerant_Emissions_Factor__c = listOfRefrigerantEmssnFctr[2].Id;
            ef.HFC_R32_Refrigerant_Emissions_Factor__c = listOfRefrigerantEmssnFctr[3].Id;
            ef.HFC_R407c_Refrigerant_Emissions_Factor__c = listOfRefrigerantEmssnFctr[4].Id;
            ef.HFC_R410a_Refrigerant_Emissions_Factor__c = listOfRefrigerantEmssnFctr[5].Id;
            ef.Last_Site_Information_Records_Updated_On__c = System.today();
            ef.Status__c = 'Approved';
            insert ef;

			StnryAssetEnvrSrc si = [SELECT Id,Name FROM StnryAssetEnvrSrc WHERE Name='Test Site Info 2' LIMIT 1];
            system.debug('si '+si);
            abc = EnergyUseControllerUpdatedOLD.getMetadataInformation(si.Id);
        }
        Test.stopTest();
        System.assertNotEquals(null, abc,'No metadata record found');
    }
    
    
    
}