/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global virtual class SM_OrgChartPlus {
    global Id attrChartId {
        get;
        set;
    }
    global String attrDefaultView {
        get;
        set;
    }
    global Boolean attrEmbedded {
        get;
        set;
    }
    global String attrFixedChartName {
        get;
        set;
    }
    global Id attrMasterId {
        get;
        set;
    }
    global Boolean attrNoFocus {
        get;
        set;
    }
    global OrgChartPlus.SM_OrgChartPlus attrOCPObj {
        get;
        set;
    }
    global String attrPrefix {
        get;
        set;
    }
    global Boolean attrReadOnly {
        get;
        set;
    }
    global Id attrTemplateId {
        get;
        set;
    }
    global Boolean attrtNoMenu {
        get;
        set;
    }
    global String jQueryURL {
        get;
    }
    global String orgChartURL {
        get;
    }
    @RemoteAction
    global static OrgChartPlus.SM_OrgChartPlus.CreateChartResult chartCreate4(Id masterId, List<List<Object>> chartDetails) {
        return null;
    }
    @RemoteAction
    global static OrgChartPlus.SM_OrgChartPlus.CreateChartResult chartCreate(Id coreId, List<List<Object>> chartDetails, List<String> chartFields) {
        return null;
    }
    @RemoteAction
    global static List<Map<String,Object>> chartDelete4(Id masterId, Id chartId) {
        return null;
    }
    @RemoteAction
    global static List<Map<String,Object>> chartDelete(Id masterId, Id chartId, List<String> chartFields) {
        return null;
    }
    @RemoteAction
    global static void chartSaveAttachment(Id masterId, String name, String mime, String adata) {

    }
    @RemoteAction
    global static List<Map<String,Object>> chartUpdate4(Id masterId, Id chartId, List<List<Object>> chartDetails) {
        return null;
    }
    @RemoteAction
    global static List<Map<String,Object>> chartUpdate(Id masterId, Id chartId, List<List<Object>> chartDetails, List<String> chartFields) {
        return null;
    }
    @RemoteAction
    global static String downloadResourceContent(String url) {
        return null;
    }
    @RemoteAction
    global static OrgChartPlus.SM_OrgChartPlus.LoadAccOppsResult loadAccOpps(List<Id> accountIds, List<Id> opportunityIds, List<String> accountDefs, List<String> opportunityDefs) {
        return null;
    }
    @RemoteAction
    global static Map<String,Object> loadChartData(Id masterId, Id chartId) {
        return null;
    }
    @RemoteAction
    global static List<List<Object>> loadEntityData4(Id masterId, Id roleMasterId, Id chartId, List<Id> contactIds, List<String> contactDefs) {
        return null;
    }
    @RemoteAction
    global static List<List<Object>> loadEntityData(Id masterId, Id chartId, List<Id> contactIds, List<String> contactDefs, List<String> involvementDefs, OrgChartPlus.SM_OrgChartPlus.CustomOCR customOCR) {
        return null;
    }
    @RemoteAction
    global static String loadImageAttachment(Id masterId, Id objId, String type, String name) {
        return null;
    }
    @RemoteAction
    global static List<OrgChartPlus.SM_OrgChartPlus.LoadIntimaciesResult> loadIntimacyData4(Id masterId, List<Id> contactIds, List<Id> teamMemberIds, List<String> intFields) {
        return null;
    }
    @RemoteAction
    global static List<OrgChartPlus.SM_OrgChartPlus.LoadIntimaciesResult> loadIntimacyData(List<Id> contactIds, List<Id> teamMemberIds, List<String> intFields) {
        return null;
    }
    @RemoteAction
    global static List<OrgChartPlus.SM_OrgChartPlus.LoadRelationshipsResult> loadRelationships(Id masterId, Id chartId) {
        return null;
    }
    @RemoteAction
    global static List<List<Object>> loadTeamMemberData(Id masterId, Id chartId, List<String> itemDefsTM, List<OrgChartPlus.SM_OrgChartPlus.TeamMemberSource> objDefs) {
        return null;
    }
    @RemoteAction
    global static String loadTemplate(Id templateId) {
        return null;
    }
    @RemoteAction
    global static List<Id> lookupContactRelationships4(Id masterId, List<Id> srcIds, Integer levelsUp, Integer levelsDown) {
        return null;
    }
    @RemoteAction
    global static List<Id> lookupContactRelationships(List<Id> srcIds, Integer levelsUp, Integer levelsDown) {
        return null;
    }
    @RemoteAction
    global static OrgChartPlus.SM_OrgChartPlus.QueryContactsResult queryContacts2(String name, String account, Id accountId, String accHierarchy, Id opportunityId, Integer maxItems, String filter, List<String> contactDefs, List<String> accDefs, OrgChartPlus.SM_OrgChartPlus.CustomOCR customOCR) {
        return null;
    }
    @RemoteAction
    global static OrgChartPlus.SM_OrgChartPlus.QueryContactsResult queryContacts(String name, String account, Id accountId, Id opportunityId, Integer maxItems, String filter, List<String> contactDefs, List<String> accDefs, OrgChartPlus.SM_OrgChartPlus.CustomOCR customOCR) {
        return null;
    }
    @RemoteAction
    global static List<List<Object>> queryObjects4(List<OrgChartPlus.SM_OrgChartPlus.QuerySet> querySets) {
        return null;
    }
    @RemoteAction
    global static List<List<Object>> queryObjects5(List<OrgChartPlus.SM_OrgChartPlus.QuerySet5> querySets) {
        return null;
    }
    @RemoteAction
    global static List<List<Object>> queryTeamMembers(String name, String account, Id accountId, Id opportunityId, List<OrgChartPlus.SM_OrgChartPlus.TeamMemberQuerySet> querySets, Integer maxItems) {
        return null;
    }
    @RemoteAction
    global static OrgChartPlus.SM_OrgChartPlus.UpdateReportsToResult saveContacts4(Id masterId, List<String> dbnList, List<OrgChartPlus.SM_OrgChartPlus.UpdateContactData> changes) {
        return null;
    }
    @RemoteAction
    global static OrgChartPlus.SM_OrgChartPlus.UpdateReportsToResult saveContacts(List<String> dbnList, List<OrgChartPlus.SM_OrgChartPlus.UpdateContactData> changes) {
        return null;
    }
    @RemoteAction
    global static void saveDeletes2(Id masterId, OrgChartPlus.SM_OrgChartPlus.CustomOCR customOCR, List<Id> deletedTeamMembersIds, List<Id> deletedEntitiesIds, List<Id> deletedRelationshipsIds, List<Id> deletedContactIds, List<Id> deleteOCRIds) {

    }
    @RemoteAction
    global static void saveDeletes4(Id masterId, Id roleMasterId, List<Id> deletedTeamMembersIds, List<Id> deletedEntitiesIds, List<Id> deletedRelationshipsIds, List<Id> deletedContactIds, List<Id> deleteOCRIds) {

    }
    @RemoteAction
    global static void saveDeletes(Id masterId, List<Id> deletedTeamMembersIds, List<Id> deletedEntitiesIds, List<Id> deletedRelationshipsIds, List<Id> deletedContactIds) {

    }
    @RemoteAction
    global static OrgChartPlus.SM_OrgChartPlus.SavedEntityIdsResult saveEntities4(Id masterId, Id roleMasterId, Id chartId, List<String> dbnList, List<OrgChartPlus.SM_OrgChartPlus.UpdateEntityData> entities) {
        return null;
    }
    @RemoteAction
    global static OrgChartPlus.SM_OrgChartPlus.SavedEntityIdsResult saveEntities(Id masterId, Id chartId, List<String> dbnList, List<OrgChartPlus.SM_OrgChartPlus.UpdateEntityData> entities) {
        return null;
    }
    @RemoteAction
    global static void saveIntimacies4(Id masterId, List<OrgChartPlus.SM_OrgChartPlus.UpdateTeamIntimacyData> intimacies, List<String> intFields, List<String> intPrefixes) {

    }
    @RemoteAction
    global static void saveIntimacies(List<OrgChartPlus.SM_OrgChartPlus.UpdateTeamIntimacyData> intimacies, List<String> intFields, List<String> intPrefixes) {

    }
    @RemoteAction
    global static void saveModifiedDate(Id masterId, Id chartId) {

    }
    @RemoteAction
    global static OrgChartPlus.SM_OrgChartPlus.SavedIdsResult saveRelationships(Id masterId, Id chartId, List<OrgChartPlus.SM_OrgChartPlus.UpdateRelationshipData> relationships) {
        return null;
    }
    @RemoteAction
    global static OrgChartPlus.SM_OrgChartPlus.UpdateReportsToResult saveReportsTo(List<OrgChartPlus.SM_OrgChartPlus.UpdateReportsTo> changes) {
        return null;
    }
    @RemoteAction
    global static void saveRoles4(Id masterId, Id roleMasterId, List<String> dbnList, List<OrgChartPlus.SM_OrgChartPlus.UpdateRoleData> changes) {

    }
    @RemoteAction
    global static void saveRoles(Id masterId, List<String> dbnList, List<OrgChartPlus.SM_OrgChartPlus.UpdateRoleData> changes, OrgChartPlus.SM_OrgChartPlus.CustomOCR customOCR) {

    }
    @RemoteAction
    global static OrgChartPlus.SM_OrgChartPlus.SavedIdsResult saveTeamMembers(Id masterId, Id chartId, List<String> itemDefsTM, List<OrgChartPlus.SM_OrgChartPlus.TeamMemberSource> objDefs, List<List<OrgChartPlus.SM_OrgChartPlus.UpdateTeamMemberData>> teamMembers, List<OrgChartPlus.SM_OrgChartPlus.UpdateTeamMemberAutoSync> autoSync) {
        return null;
    }
    @RemoteAction
    global static void saveTemplatePlaceholders(Id templateId, String placeHolders) {

    }
    @RemoteAction
    global static List<List<Object>> searchForLookup(String filter, String objectAPIName, String searchAPIName, List<String> fieldAPINames) {
        return null;
    }
global class CreateChartResult {
}
global class CustomOCR {
    global CustomOCR() {

    }
}
global class EntityIdPair {
}
global class LoadAccOppsResult {
}
global class LoadIntimaciesResult {
}
global class LoadRelationshipsResult {
}
global class QueryContactsResult {
    global QueryContactsResult() {

    }
}
global class QuerySet {
    global List<String> fields;
    global List<String> finalFields;
    global String hierarchy;
    global String hierarchyField;
    global List<Id> idFilter;
    global String initialFilter;
    global Integer maxItems;
    global String objName;
    global String repeatFilter;
    global QuerySet() {

    }
}
global class QuerySet5 {
    global List<String> fields;
    global List<String> finalFields;
    global String hierarchy;
    global String hierarchyField;
    global List<Id> idFilter;
    global String initialFilter;
    global Integer maxItems;
    global String objName;
    global String orderBy;
    global String repeatFilter;
    global QuerySet5() {

    }
}
global class SavedEntityIdsResult {
}
global class SavedIdsResult {
}
global class TeamMemberQuerySet {
}
global class TeamMemberSource {
}
global class UpdateContactData {
    global UpdateContactData() {

    }
}
global class UpdateEntityData {
    global UpdateEntityData() {

    }
}
global class UpdateRelationshipData {
    global UpdateRelationshipData() {

    }
}
global class UpdateReportsTo {
    global UpdateReportsTo() {

    }
}
global class UpdateReportsToContact {
}
global class UpdateReportsToResult {
}
global class UpdateRoleData {
    global UpdateRoleData() {

    }
}
global class UpdateTeamIntimacyData {
    global UpdateTeamIntimacyData() {

    }
}
global class UpdateTeamMemberAutoSync {
    global UpdateTeamMemberAutoSync() {

    }
}
global class UpdateTeamMemberData {
    global UpdateTeamMemberData() {

    }
}
}
