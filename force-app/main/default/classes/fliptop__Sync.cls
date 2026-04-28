/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class Sync implements Database.AllowsCallouts, Database.Batchable<SObject> {
    global static Map<String,String> STATUS_MAP;
    global Sync(fliptop.Sync.SyncType theSyncType) {

    }
    global void execute(Database.BatchableContext BC, List<SObject> scope) {

    }
    global void finish(Database.BatchableContext BC) {

    }
    global Database.QueryLocator start(Database.BatchableContext bc) {
        return null;
    }
global enum SyncType {CONTACT, LEAD}
}
