/********************************************************************
Class Name: NZCR22RefrigerantTest
Created By: Susnato
Created on: 13-May-2024 
Description: This is used to test the class named 'NZCR22Refrigerant'
*********************************************************************
Change Log:
*********************************************************************/


@isTest
public class NZCR22RefrigerantTest {
   /* @isTest
    public static void testSetUpMethod(){
        try{
            Test.StartTest();
            
            List<AnnualEmssnInventory> annuList123 = new List<AnnualEmssnInventory>();
            NZCR22Refrigerant.getR22andEnergy(annuList123);
        }
        catch(Exception e){
            
            System.assertEquals(e.getMessage(),'Script-thrown exception');
        }
        Test.StopTest();
    }*/
    
    @isTest
    public static void testSetUpMethod1(){
        try{
        
        Test.StartTest();   
        Id p = [SELECT Id FROM Profile WHERE Name='Cog Net Zero Cloud Profile'].id;
        /*Account ac = new Account(name ='Test') ;
        insert ac;
        Contact con = new Contact(LastName ='testCon',AccountId = ac.Id);
        insert con;*/
        User user = new User(
            UserName = 'test_' + math.random() + '@test.com',
            FirstName = 'Data',
            LastName = 'Approver',
            Alias = 'test',
            email = 'test' + math.random() + '@test.com',
            CommunityNickName = string.valueOf(math.random()).substring(0,6),
            ProfileID = p,
            TimeZoneSidKey = 'America/New_York', 
            LocaleSidKey = 'en_US', 
            EmailEncodingKey = 'UTF-8', 
            LanguageLocaleKey = 'en_US',
            User_Type__c = 'Data Approver');
        insert user;
        System.debug(user);
        List<AnnualEmssnInventory> annuList = new List<AnnualEmssnInventory>();
        AnnualEmssnInventory aei = new AnnualEmssnInventory(Name ='Test', Year = '2022') ;
        insert aei;
        annuList.add(aei);
        System.debug(aei);
        
        Id esrc = Schema.SObjectType.StnryAssetEnvrSrc.getRecordTypeInfosByName().get('Commercial Building').getRecordTypeId();
        //Id dataApp = [SELECT Id FROM User Where Name = 'Data Approver'].Id;
        
        StnryAssetEnvrSrc saId = new StnryAssetEnvrSrc();
        saId.Name = 'Test Rec 11';
        saId.BusinessRegion = 'INDIA';
        saId.I_have_reviewed_all_fields_and_data__c = TRUE;
        saId.Active__c = TRUE;
        saId.Status__c = 'Approved';
        saId.Data_Approver__c = user.id;
        saId.RecordTypeId = esrc;
        saId.StationaryAssetType = 'Delivery Center';
        saId.StationaryAssetIdentifier = '1232';
        insert saId;
        System.debug(saId);
        
        StnryAssetCrbnFtprnt cf1 = new StnryAssetCrbnFtprnt(Name ='Test1', FootprintStage = 'Data Collection', AnnualEmssnInventoryId = aei.Id, StnryAssetEnvrSrcId = saId.Id);
        insert cf1;
        System.debug(cf1);
        StnryAssetCrbnFtprnt cf2 = new StnryAssetCrbnFtprnt(Name ='Test2', FootprintStage = 'Data Collection', AnnualEmssnInventoryId = aei.Id, StnryAssetEnvrSrcId = saId.Id); 
        insert cf2;
        System.debug(cf2);
        
        RefrigerantEmssnFctr refrig = new RefrigerantEmssnFctr();
        refrig.Name = 'Test-R22 - Date';
        insert refrig;       
        
        StnryAssetEnrgyUse eu1 = new StnryAssetEnrgyUse(Name ='Test1', StnryAssetCrbnFtprntId = cf1.Id, StnryAssetEnvrSrcId = saId.Id, FuelConsumption = 100 , FuelType = 'Refrigerant',
                                                        FuelConsumptionUnit ='longTons', I_have_reviewed_all_fields_and_data__c = True, RefrigerantEmssnFctrId = refrig.Id) ;
        insert eu1;
        System.debug(eu1);
        
        StnryAssetEnrgyUse eu2 = new StnryAssetEnrgyUse(Name ='Test2', StnryAssetCrbnFtprntId = cf1.Id, StnryAssetEnvrSrcId = saId.Id, FuelConsumption = 200 , FuelType = 'Electricity',FuelConsumptionUnit ='kWh', I_have_reviewed_all_fields_and_data__c = True) ;
        insert eu2;
        System.debug(eu2);
        
        StnryAssetEnrgyUse eu3 = new StnryAssetEnrgyUse(Name ='Test3', StnryAssetCrbnFtprntId = cf2.Id, StnryAssetEnvrSrcId = saId.Id, FuelConsumption = 300 , FuelType = 'Refrigerant',
                                                        FuelConsumptionUnit ='longTons', I_have_reviewed_all_fields_and_data__c = True, RefrigerantEmssnFctrId = refrig.Id) ;
        insert eu3;
        System.debug(eu3);
        
        StnryAssetEnrgyUse eu4 = new StnryAssetEnrgyUse(Name ='Test4', StnryAssetCrbnFtprntId = cf2.Id, StnryAssetEnvrSrcId = saId.Id, FuelConsumption = 400 , FuelType = 'Electricity',FuelConsumptionUnit ='kWh', I_have_reviewed_all_fields_and_data__c = True) ;
        insert eu4;
        System.debug(eu4);
            
        StnryAssetEnrgyUse eu5 = new StnryAssetEnrgyUse(Name='Test5', StnryAssetCrbnFtprntId = cf1.Id, StnryAssetEnvrSrcId = saId.Id, FuelConsumption = 100, FuelType = 'Electricity', FuelConsumptionUnit ='kWh', RenewableEnergyType='Solar', AllocatedRenewableEnergyInKwh = 100, I_have_reviewed_all_fields_and_data__c = True);
        insert eu5;
        System.debug(eu5);
            
        StnryAssetEnrgyUse eu6 = new StnryAssetEnrgyUse(Name='Test6', StnryAssetCrbnFtprntId = cf1.Id, StnryAssetEnvrSrcId = saId.Id, FuelConsumption = 200, FuelType = 'Electricity', FuelConsumptionUnit ='kWh', RenewableEnergyType='Wind', AllocatedRenewableEnergyInKwh = 200, I_have_reviewed_all_fields_and_data__c = True);
        insert eu6;
        System.debug(eu6);
        
        StnryAssetEnrgyUse eu7 = new StnryAssetEnrgyUse(Name='Test7', StnryAssetCrbnFtprntId = cf1.Id, StnryAssetEnvrSrcId = saId.Id, FuelConsumption = 600, FuelType = 'Electricity', FuelConsumptionUnit ='kWh', I_have_reviewed_all_fields_and_data__c = True);
        insert eu7;
        System.debug(eu7);
            
        /*StnryAssetEnrgyUse eu8 = new StnryAssetEnrgyUse(Name='Test8', StnryAssetCrbnFtprntId = cf1.Id, StnryAssetEnvrSrcId = saId.Id, FuelConsumption = 700, FuelType = 'SolarSelfGenerated', FuelConsumptionUnit ='kWh', I_have_reviewed_all_fields_and_data__c = True);
        insert eu8;
        System.debug(eu8);*/
        
        StnryAssetEnrgyUse eu9 = new StnryAssetEnrgyUse(Name='Test9', StnryAssetCrbnFtprntId = cf2.Id, StnryAssetEnvrSrcId = saId.Id, FuelConsumption = 200, FuelType = 'Electricity', FuelConsumptionUnit ='kWh', RenewableEnergyType='Solar', AllocatedRenewableEnergyInKwh = 200, I_have_reviewed_all_fields_and_data__c = True);
        insert eu9;
        System.debug(eu9);
        
        StnryAssetEnrgyUse eu10 = new StnryAssetEnrgyUse(Name='Test10', StnryAssetCrbnFtprntId = cf2.Id, StnryAssetEnvrSrcId = saId.Id, FuelConsumption = 200, FuelType = 'Electricity', FuelConsumptionUnit ='kWh', RenewableEnergyType='Wind', AllocatedRenewableEnergyInKwh = 200, I_have_reviewed_all_fields_and_data__c = True);
        insert eu10;
        System.debug(eu10);
            
        /*StnryAssetEnrgyUse eu11 = new StnryAssetEnrgyUse(Name='Test11', StnryAssetCrbnFtprntId = cf2.Id, StnryAssetEnvrSrcId = saId.Id, FuelConsumption = 600, FuelType = 'Solar Self Generated (CUSTOM)', FuelConsumptionUnit ='kWh', I_have_reviewed_all_fields_and_data__c = True);
        insert eu11;
        System.debug(eu11);*/
           

            
   /*     StnryAssetEnrgyUse eu13= new StnryAssetEnrgyUse(Name='Test13', StnryAssetCrbnFtprntId = cf2.Id, StnryAssetEnvrSrcId = saId.Id, FuelConsumption = 600, FuelType = 'custom_LPG', FuelConsumptionUnit ='kWh', I_have_reviewed_all_fields_and_data__c = True);
        insert eu13;
            
        StnryAssetEnrgyUse eu14= new StnryAssetEnrgyUse(Name='Test14', StnryAssetCrbnFtprntId = cf2.Id, StnryAssetEnvrSrcId = saId.Id, FuelConsumption = 700, FuelType = 'custom_MultitenantDG', FuelConsumptionUnit ='kWh', I_have_reviewed_all_fields_and_data__c = True);
        insert eu14;
            
        StnryAssetEnrgyUse eu15 = new StnryAssetEnrgyUse(Name='Test15', StnryAssetCrbnFtprntId = cf2.Id, StnryAssetEnvrSrcId = saId.Id, FuelConsumption = 800, FuelType = 'Diesel', FuelConsumptionUnit ='kWh', I_have_reviewed_all_fields_and_data__c = True);
        insert eu15;
            
		StnryAssetEnrgyUse eu16= new StnryAssetEnrgyUse(Name='Test16', StnryAssetCrbnFtprntId = cf2.Id, StnryAssetEnvrSrcId = saId.Id, FuelConsumption = 900, FuelType = 'NaturalGas', FuelConsumptionUnit ='kWh', I_have_reviewed_all_fields_and_data__c = True);
        insert eu16;
  
        */
        Id vart = Schema.SObjectType.VehicleAssetEmssnSrc.getRecordTypeInfosByName().get('Fleet Vehicle').getRecordTypeId();
        /*ElectricityEmssnFctrSet efac = new ElectricityEmssnFctrSet(Name = 'Test EMF', Country='IN', Co2eEmissionRate = 0.823000, MktBsdCo2eEmissionRate = 0.823000, Co2eEmissionRateUnit = 'TONNES_PER_MWH', MktBsdCo2eEmissionRateUnit = 'TONNES_PER_MWH');
        insert efac;
        System.debug(efac);
        
        Emission_Factor__c emsFac = new Emission_Factor__c(Name='Test EF', Country__c='IN', Electricity_Emissions_Factor_Set__c=efac.Id);
        insert emsFac;
        System.debug(emsFac);*/
            
        OtherEmssnFctrSet oefs = new OtherEmssnFctrSet(Name = 'Test17', Ch4GlblWarmingPot = 1, N2oGlblWarmingPot = 1);
        insert oefs;    
        System.debug(oefs);
            
        OtherEmssnFctrSet oefs2 = new OtherEmssnFctrSet(Name = 'Test18', Ch4GlblWarmingPot = 1, N2oGlblWarmingPot = 1);
        insert oefs2;    
        System.debug(oefs2);
            
        OtherEmssnFctrSetItem oefsi= new OtherEmssnFctrSetItem(	FuelType='Diesel' , ParentEmissionFactorId = oefs.id ,CalorificValue= 10.660000, CalorificValueUnit= 'KWH_PER_L', Ch4EmissionFactor= 0.0003000 , Ch4EmissionFactorUnit='KG_PER_KWH' , Co2EmissionFactor = 0.249710, Co2EmissionFactorUnit = 'KG_PER_KWH', N2oEmissionFactor= 0.0034800 , N2oEmissionFactorUnit='KG_PER_KWH');
        insert oefsi;
        System.debug(oefsi);
            
        OtherEmssnFctrSetItem oefsi2= new OtherEmssnFctrSetItem(FuelType='Diesel' , ParentEmissionFactorId = oefs2.id ,CalorificValue= 1, CalorificValueUnit= 'KWH_PER_L', Ch4EmissionFactor= 0.0000200 , Ch4EmissionFactorUnit='KG_PER_L' , Co2EmissionFactor = 2.559560, Co2EmissionFactorUnit = 'KG_PER_L', N2oEmissionFactor= 0.0342500 , N2oEmissionFactorUnit='KG_PER_L');
        insert oefsi2;
        System.debug(oefsi2);
            
        OtherEmssnFctrSetItem oefsi3= new OtherEmssnFctrSetItem(FuelType='Gasoline' , ParentEmissionFactorId = oefs2.id ,CalorificValue= 1, CalorificValueUnit= 'KWH_PER_L', Ch4EmissionFactor= 0.0000200 , Ch4EmissionFactorUnit='KG_PER_L' , Co2EmissionFactor = 2.559560, Co2EmissionFactorUnit = 'KG_PER_L', N2oEmissionFactor= 0.0342500 , N2oEmissionFactorUnit='KG_PER_L');
        insert oefsi3;
        System.debug(oefsi3);
            
        OtherEmssnFctrSetItem oefsi4= new OtherEmssnFctrSetItem(FuelType='Electricity' , ParentEmissionFactorId = oefs.id ,CalorificValue= 1, CalorificValueUnit= 'KWH_PER_L', Ch4EmissionFactor= 0.0000200 , Ch4EmissionFactorUnit='G_PER_KWH' , Co2EmissionFactor = 2.559560, Co2EmissionFactorUnit = 'G_PER_KWH', N2oEmissionFactor= 0.0342500 , N2oEmissionFactorUnit='G_PER_KWH');
        insert oefsi4;
        System.debug(oefsi4);
            
        StnryAssetEnrgyUse eu12 = new StnryAssetEnrgyUse(Name='Test19', StnryAssetCrbnFtprntId = cf2.Id, OtherEmssnFctrId = oefs.id, StnryAssetEnvrSrcId = saId.Id, FuelConsumption = 500, FuelType = 'Diesel', FuelConsumptionUnit ='Liters', StartDate = Date.newInstance(2022, 1, 1), EndDate = Date.newInstance(2022, 2, 2), I_have_reviewed_all_fields_and_data__c = True);
        insert eu12;
        System.debug(eu12);
            
        VehicleAssetEmssnSrc vaes = new VehicleAssetEmssnSrc(Name = 'Test20', BusinessRegion= 'INDIA', Country= 'IN', OtherEmssnFctrId = oefs2.id , RecordTypeId = vart);
		insert vaes; 
        System.debug(vaes); 
            
        VehicleAssetCrbnFtprnt vacf = new VehicleAssetCrbnFtprnt(Name='Test VACF', VehicleAssetEmssnSrcId = vaes.id, FootprintStage = 'Data Collection', StartDate = Date.newInstance(2022, 1, 1), EndDate = Date.newInstance(2022, 2, 2), AnnualEmssnInventoryId = aei.Id, VehicleType='Diesel');
        insert vacf;   
        System.debug(vacf);
            
        VehicleAssetEnrgyUse vaeu = new VehicleAssetEnrgyUse (Name = 'Test21', VehicleAssetEmssnSrcId = vaes.id, FuelType = 'Diesel', OtherEmssnFctrId = oefs2.id , FuelConsumption = 456.78 , FuelConsumptionUnit = 'Liters', StartDate = Date.newInstance(2022, 1, 1), EndDate = Date.newInstance(2022, 2, 2), VehicleAssetCrbnFtprntId = vacf.Id);
        insert vaeu;  
        System.debug(vaeu);
        
        VehicleAssetEnrgyUse vaeu1 = new VehicleAssetEnrgyUse (Name = 'Test22', VehicleAssetEmssnSrcId = vaes.id, FuelType = 'Gasoline', OtherEmssnFctrId = oefs2.id , FuelConsumption = 456.78 , FuelConsumptionUnit = 'Liters', StartDate = Date.newInstance(2022, 1, 1), EndDate = Date.newInstance(2022, 2, 2), VehicleAssetCrbnFtprntId = vacf.Id);
        insert vaeu1;  
        System.debug(vaeu1);
            
        NZCR22Refrigerant.getR22andEnergy(annuList);
        NZCR22Refrigerant.R22Calculation(annuList);
        NZCR22Refrigerant.percentageCalculation(annuList);
        NZCR22Refrigerant.percentageCalculation2(annuList);
		}
        catch(Exception e){
            
            System.assertEquals(e.getMessage(),'Script-thrown exception');
        }
        
        List<AnnualEmssnInventory> annuList123 = new List<AnnualEmssnInventory>();
        NZCR22Refrigerant.getR22andEnergy(annuList123);
        
        Test.StopTest();
    }
}