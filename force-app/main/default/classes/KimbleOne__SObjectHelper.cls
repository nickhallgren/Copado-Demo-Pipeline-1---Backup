/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class SObjectHelper {
    global SObjectHelper() {

    }
    global static Set<String> GetAllFields(Schema.DescribeSObjectResult sObjectType) {
        return null;
    }
    global static Map<String,String> GetFieldLabelsForObject(String objectName) {
        return null;
    }
    global static Object GetFieldValue(SObject o, String fieldPath) {
        return null;
    }
    global static Schema.SObjectField GetRelationshipField(Schema.DescribeSObjectResult obj, String relationshipName) {
        return null;
    }
    global static Schema.DescribeSObjectResult GetSObjectDescribeById(Id id) {
        return null;
    }
    global static Map<Id,SObject> SelectAllFromSObjectWithChildren(Schema.DescribeSObjectResult sObjectType, Set<String> fieldsToSelect, List<KimbleOne.SObjectHelper.SObjectFilter> filter, Schema.ChildRelationship childRelationship, Set<String> childFieldsToSelect) {
        return null;
    }
    global static Map<Id,SObject> SelectAllFromSObjectWithChildren(Schema.DescribeSObjectResult sObjectType, Set<String> fieldsToSelect, Set<Id> ids, Schema.ChildRelationship childRelationship, Set<String> childFieldsToSelect) {
        return null;
    }
    global static Map<Id,SObject> SelectAllFromSObject(Schema.DescribeSObjectResult sObjectType, Set<String> fieldsToSelect, List<KimbleOne.SObjectHelper.SObjectFilter> filter) {
        return null;
    }
    global static Map<Id,SObject> SelectAllFromSObject(Schema.DescribeSObjectResult sObjectType, Set<String> fieldsToSelect, List<KimbleOne.SObjectHelper.SObjectFilter> filter, Boolean forUpdate) {
        return null;
    }
    global static Map<Id,SObject> SelectAllFromSObject(Schema.DescribeSObjectResult sObjectType, Set<String> fieldsToSelect, List<KimbleOne.SObjectHelper.SObjectFilter> filter, Boolean forUpdate, String additionalFilter) {
        return null;
    }
    global static Map<Id,SObject> SelectAllFromSObject(Schema.DescribeSObjectResult sObjectType, Set<String> fieldsToSelect, Set<Id> ids, Boolean forUpdate) {
        return null;
    }
global class SObjectFilter {
    global String FieldName {
        get;
        set;
    }
    global String Soql;
    global String Values {
        get;
        set;
    }
    global SObjectFilter(String name, Set<Id> vals) {

    }
}
}
