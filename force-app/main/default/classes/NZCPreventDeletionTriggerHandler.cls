/*******************************************************************************
Class Name : NZCPreventDeletionTriggerHandler
Created By : Durjay/Debasmita
Created : 13-May-2024
Description : Handler Class for NZCPreventDeletionTrigger Trigger

*********************************************************************************
Change Log :
************************************************************************/

public class NZCPreventDeletionTriggerHandler {
    public static void handlerClass(List<ContentDocument> cdList){
        Profile userProfile = new Profile();
        try{
            userProfile = [SELECT Id FROM Profile WHERE Name='Partner Community User']; 
            if(userProfile?.Id == UserInfo.getProfileId()) {    
                for (ContentDocument cd : cdList){
                    cd.adderror(System.Label.NZC_File_Deletion_Error);
                }
            }
        }
        catch(Exception ex){
            throw (new AuraHandledException(ex.getMessage()));
        }
    }
}