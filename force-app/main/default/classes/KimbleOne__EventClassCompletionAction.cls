/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global abstract class EventClassCompletionAction {
    global KimbleOne.EventClassCompletionAction.BooleanField ExecuteAsynchronously;
    global Id TheEventId {
        get;
        set;
    }
    global List<KimbleOne__Event__c> TheEvents {
        get;
        set;
    }
    global String TypeName {
        get;
    }
    global EventClassCompletionAction() {

    }
    global EventClassCompletionAction(Boolean async) {

    }
    global abstract void Complete();
    global abstract String GetCompletionActionTypeName();
global class BooleanField extends KimbleOne.EventClassCompletionAction.Field {
    global Boolean isBoolean;
    global Boolean value;
    global BooleanField(String aLabel) {

    }
    global BooleanField(String aLabel, Boolean aDefault) {

    }
}
global abstract class Field {
    global String label;
    global Field() {

    }
}
global class StringField extends KimbleOne.EventClassCompletionAction.Field {
    global Boolean isString;
    global String value;
    global StringField(String aLabel) {

    }
    global StringField(String aLabel, String aDefault) {

    }
}
}
