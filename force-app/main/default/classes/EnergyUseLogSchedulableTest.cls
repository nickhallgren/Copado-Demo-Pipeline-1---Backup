@isTest
public class EnergyUseLogSchedulableTest {

    @testSetup
    static void createTestData(){
        List<Profile> profileDP = [SELECT Id FROM Profile WHERE name='Cog Net Zero Cloud Profile' LIMIT 1];
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
    }

    public static String CRON_EXP = '0 0 0 ? 1/3 * *';
	@isTest
    static void executeTest(){
        User u = [select Id from User where UserName='dataprocessor@cognizant.com.nzc99' limit 1];
        CronTrigger ct =  new CronTrigger();
        Test.startTest();
        System.runAs(u){
            Energy_Use_Data_Log__c el = new Energy_Use_Data_Log__c();
            el.Archival_Criteria_Check__c = true;
            insert el;
            String jobId = System.schedule('Test my class',
                        CRON_EXP, 
                        new EnergyUseLogSchedulable());
            ct = [SELECT Id, CronExpression, TimesTriggered, NextFireTime FROM CronTrigger WHERE id = :jobId];
            String el1 = 'SELECT Id, Archival_Criteria_Check__c FROM Energy_Use_Data_Log__c WHERE Archival_Criteria_Check__c=true';
            EnergyUseLogBatchable batch = new EnergyUseLogBatchable(el1);
            DataBase.executeBatch(batch);

        }
        Test.stopTest();
        System.assertEquals(CRON_EXP, ct.CronExpression,'Test passed');
        
    }
}