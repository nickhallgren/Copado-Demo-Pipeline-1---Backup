/**********************************************************************************************************************************************************
Class Name: NZCErrorLog
Created By: Pranav Vibhandik
Created on: 28-May-2024 
Description: Logs error messages by creating records in the Error_Log__c custom object to store error details for debugging and tracking purposes.

***********************************************************************************************************************************************************/

public class NZCErrorLog {

    public static void logError(String eMsg) {
        Error_Log__c err = new Error_Log__c();
        err.Error_Details__c = eMsg;
        insert(err);
    }
    
    public static String logErrors(List<String> eMsgs) {
        
        List<Error_Log__c> errorLogs = new List<Error_Log__c>();
        for(String s : eMsgs){
            Error_Log__c err = new Error_Log__c();
            err.Error_Details__c = s;
            errorLogs.add(err);
        }
        if(!errorLogs.isEmpty()){
            insert(errorLogs);
        }
        return 'error logs inserted';
    }
}