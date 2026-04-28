global with sharing class EnergyUseLogSchedulable implements Schedulable{
	
    global void execute(SchedulableContext sc){
        String query = 'Select Id,Eligible_for_Archival__c from Energy_Use_Data_Log__c where Eligible_for_Archival__c=true';
        Database.ExecuteBatch(new EnergyUseLogBatchable(query),200);
    }
}