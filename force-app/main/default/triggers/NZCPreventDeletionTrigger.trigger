/*******************************************************************************
Trigger Name : NZCPreventDeletionTrigger
Created By : Harsh
Created : 15-Apr-2024
Description : Used to prevent deletion of Files from Supplier Portal for the Portal User.
Test Class : NZCPreventDeletionTriggerTest
Handler Class : NZCPreventDeletionTriggerHandler

*********************************************************************************
Change Log :

************************************************************************/

trigger NZCPreventDeletionTrigger on ContentDocument (before delete) {
    if(Trigger.isDelete && Trigger.isBefore){
        NZCPreventDeletionTriggerHandler.handlerClass(trigger.old);
    }
}