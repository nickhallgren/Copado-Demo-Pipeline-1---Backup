/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class GetFieldInformation {
    global GetFieldInformation() {

    }
    global static List<usf.FieldDescriptor> describeSObject(String type) {
        return null;
    }
    global static Map<String,List<usf.FieldDescriptor>> describeSObjects(List<String> types) {
        return null;
    }
    global static Map<String,usf.FieldDescriptor> describeSObjects(String obj) {
        return null;
    }
    @InvocableMethod
    global static List<usf.GetFieldInformation.Results> getFieldInformation(List<usf.GetFieldInformation.Requests> requestList) {
        return null;
    }
global class Requests {
    @InvocableVariable( required=true)
    global String objectName;
    global Requests() {

    }
}
global class Results {
    @InvocableVariable( required=false)
    global List<usf.FieldDescriptor> fields;
    global Results() {

    }
}
}
