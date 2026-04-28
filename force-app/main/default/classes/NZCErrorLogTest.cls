/**********************************************************************************************************************************************************
Class Name: NZCErrorLogTest
Created By: Pranav Vibhandik
Created on: 28-May-2024 
Description: Tests the NZCErrorLog class by verifying that error messages are correctly logged to the Error_Log__c custom object.

***********************************************************************************************************************************************************/

@isTest
public class NZCErrorLogTest {
    
    @isTest
    static void testLogError() {
        // Define a sample error message
        String sampleErrorMessage = 'Test error message';
        String err = 'Error';
        List<String> sampleErrorMessageList = new List<String>();
        sampleErrorMessageList.add(err);
        // Call the logError method
        Test.startTest();
        NZCErrorLog.logError(sampleErrorMessage);
        
        String result = NZCErrorLog.logErrors(sampleErrorMessageList);
        Test.stopTest();
        
        // Query all error log records
        List<Error_Log__c> errorLogs = [SELECT Id, Error_Details__c FROM Error_Log__c];
        
        // Filter the error logs to find the one with the sample error message
        Error_Log__c matchingErrorLog = null;
        for (Error_Log__c log : errorLogs) {
            if (log.Error_Details__c == sampleErrorMessage) {
                matchingErrorLog = log;
                break;
            }
           
        }
        
        // Verify that the error log record was created
        System.assertNotEquals(null, matchingErrorLog, 'An error log record should have been created');
        System.assertEquals(sampleErrorMessage, matchingErrorLog.Error_Details__c, 'Error details should match the sample error message');
        System.assertNotEquals(null, result,'No error logs found');
    }
}