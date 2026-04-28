public class EnergyUseLogBatchable implements Database.Batchable<sObject>{
	public final String query;
    public EnergyUseLogBatchable(String q){
        query=q;
    }
    public Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator(query);
    }
    public void execute(Database.BatchableContext bc, List<Energy_Use_Data_Log__c> scope){
		 EnergyUseLogHandler.deletelogs(scope);       
    }
    public void finish(Database.BatchableContext bc){
        //system.debug('Completed');
    }
}