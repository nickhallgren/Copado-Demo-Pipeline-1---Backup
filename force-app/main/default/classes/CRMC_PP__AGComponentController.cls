/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class AGComponentController {
    global AGComponentController() {

    }
    @RemoteAction
    global static void CancelOutgoingRequestActions(String fieldName, List<String> recordIds) {

    }
    @RemoteAction
    global static Boolean ConfigureRequestActionMonitor(Boolean enable) {
        return null;
    }
    @RemoteAction
    global static Boolean IsRequestActionMonitorEnabled() {
        return null;
    }
    @RemoteAction
    global static String PostRequestAction(CRMC_PP.BatchAddRequestAction request) {
        return null;
    }
    @RemoteAction
    global static Boolean PostToChatter(CRMC_PP.BatchChatterRequest request) {
        return null;
    }
    @RemoteAction
    global static Boolean ResolveRequestActions() {
        return null;
    }
    @RemoteAction
    global static void ResolveRequestActionsById(List<String> requestIds) {

    }
    @RemoteAction
    global static List<Database.SaveResult> batchCloneWithIds(String objectName, List<Id> recordIds, List<String> fields, Integer numberOfEachClone, Map<String,Object> overrideIds) {
        return null;
    }
    @RemoteAction
    global static List<Database.SaveResult> batchClone(String objectName, List<Id> recordIds, List<String> fields, Integer numberOfEachClone) {
        return null;
    }
    @RemoteAction
    global static List<Database.SaveResult> batchClone(String objectName, List<Id> recordIds, List<String> fields, Integer numberOfEachClone, Map<String,Object> overrideIds) {
        return null;
    }
    @RemoteAction
    global static Id batchUpdate(CRMC_PP.PageRequest request, List<String> fields, SObject proto) {
        return null;
    }
    @RemoteAction
    global static Boolean configureCustomBtnsInline(Boolean enabled) {
        return null;
    }
    @RemoteAction
    global static Boolean configureMultiTabVFCreation(Boolean enabled) {
        return null;
    }
    @RemoteAction
    global static Boolean configureVirtualization(Boolean enabled) {
        return null;
    }
    @Deprecated
    @ReadOnly
    @RemoteAction
    global static Integer countQuery(String soql) {
        return null;
    }
    @RemoteAction
    global static String doRemoteAction(String methodName, String parameterMap) {
        return null;
    }
    @RemoteAction
    global static String getAccessToken() {
        return null;
    }
    @RemoteAction
    global static List<String> getAccessibleObjects(List<String> objectArr) {
        return null;
    }
    @Deprecated
    @ReadOnly
    @RemoteAction
    global static String getCommunityURLPrefix() {
        return null;
    }
    @RemoteAction
    global static List<String> getDefaultFieldsForObject(String objectName) {
        return null;
    }
    @RemoteAction
    global static List<CRMC_PP.FieldMeta> getFieldMetaForObjectColumns(String objectName, List<String> columns) {
        return null;
    }
    @RemoteAction
    global static List<CRMC_PP.FieldMeta> getFieldMetaForObject(String objectName, Boolean parentFlag) {
        return null;
    }
    @RemoteAction
    global static List<String> getFieldSetDescribe(String objectName, String fieldSetName) {
        return null;
    }
    @RemoteAction
    global static List<String> getLicensedPackages(List<String> namespaceList) {
        return null;
    }
    @ReadOnly
    @RemoteAction
    global static CRMC_PP.ResultSet getPage(CRMC_PP.PageRequest request) {
        return null;
    }
    @RemoteAction
    global static String getPostParameter(String paramName) {
        return null;
    }
    @Deprecated
    @RemoteAction
    global static CRMC_PP.ResultSOQL getResultSOQL(CRMC_PP.PageRequest request) {
        return null;
    }
    @RemoteAction
    global static CRMC_PP.ResultSOQL getSOQLFromRequest(CRMC_PP.PageRequest request) {
        return null;
    }
    @RemoteAction
    global static CRMC_PP.ResultSet getTotalCounts(CRMC_PP.PageRequest request, Boolean isSmartFilter) {
        return null;
    }
    @AuraEnabled
    @ReadOnly
    @RemoteAction
    global static List<String> getValidHostsForOrg() {
        return null;
    }
    @RemoteAction
    global static Boolean isCustomBtnsInlineEnabled() {
        return null;
    }
    @RemoteAction
    global static Boolean isMultiTabVFCreationEnabled() {
        return null;
    }
    @RemoteAction
    global static Boolean isPackageInstalled(String appPrefix) {
        return null;
    }
    @RemoteAction
    global static Boolean isVirtualizationEnabled() {
        return null;
    }
    @Deprecated
    @ReadOnly
    @RemoteAction
    global static CRMC_PP.ResultSet runQuery(String soql, Integer take, Integer skip, String suffix, String fkRelationship) {
        return null;
    }
    @RemoteAction
    global static Id saveCaseComment(CaseComment data) {
        return null;
    }
    @RemoteAction
    global static Id saveObject(SObject data) {
        return null;
    }
}
