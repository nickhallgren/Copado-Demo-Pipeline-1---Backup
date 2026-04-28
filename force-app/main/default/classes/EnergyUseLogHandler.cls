public with sharing class EnergyUseLogHandler {
    public static void deletelogs(List<Energy_Use_Data_Log__c> scope){
        try{
        List<Energy_Use_Data_Log__c> logList = new list<Energy_Use_Data_Log__c>();
        loglist.addAll(scope);
        delete loglist;
        }catch(Exception e){
            String error = e.getMessage();
            //System.debug('The following exception has occured ' + e.getMessage());
        }
    }
}