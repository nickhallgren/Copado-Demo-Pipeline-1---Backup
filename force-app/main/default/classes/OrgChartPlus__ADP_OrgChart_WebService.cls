/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class ADP_OrgChart_WebService {
    global ADP_OrgChart_WebService() {

    }
    webService static String createOrgChart(Id coreId, String name) {
        return null;
    }
    webService static String createOrgChart2(Id coreId, Boolean automaticChart, String name) {
        return null;
    }
    webService static List<OrgChartPlus.ADP_OrgChart_WebService.AvailableChart> deleteOrgChartData(Id coreId, Id chartId) {
        return null;
    }
    webService static List<OrgChartPlus.ADP_OrgChart_WebService.EntityData> loadEntityData2(Id coreId, Id chartId, List<Id> contactIds) {
        return null;
    }
    webService static List<OrgChartPlus.ADP_OrgChart_WebService.EntityData> loadEntityData(Id coreId, Id chartId) {
        return null;
    }
    webService static OrgChartPlus.ADP_OrgChart_WebService.InitialOrgChartData loadInitialOrgChartData(Id coreId) {
        return null;
    }
    webService static List<OrgChartPlus.ADP_OrgChart_WebService.TeamMemberData> loadTeamMemberData(Id chartId) {
        return null;
    }
    webService static List<Contact> queryContacts(String name, String account, String accountId, String opportunityId, Integer maxItems, Boolean getAccountSite) {
        return null;
    }
    webService static List<OrgChartPlus.ADP_OrgChart_WebService.QueryIntimacyResult> queryIntimacyData(OrgChartPlus.ADP_OrgChart_WebService.QueryIntimacyParams params) {
        return null;
    }
    webService static List<OrgChartPlus.ADP_OrgChart_WebService.TeamMemberSearchResult> queryTeamMemberData2(String search, Integer maxResults) {
        return null;
    }
    webService static List<OrgChartPlus.ADP_OrgChart_WebService.TeamMemberSearchResult> queryTeamMemberData(String search) {
        return null;
    }
    webService static void updateOrgChart_Delete(Id coreId, OrgChartPlus.ADP_OrgChart_WebService.DeleteParams deleteParams) {

    }
    webService static OrgChartPlus.ADP_OrgChart_WebService.UpdateEntityResult updateOrgChart_Entities(Id coreId, Id chartId, List<OrgChartPlus.ADP_OrgChart_WebService.UpdateEntityData> entities) {
        return null;
    }
    webService static OrgChartPlus.ADP_OrgChart_WebService.UpdateRelationshipResult updateOrgChart_Relationships(Id coreId, Id chartId, List<OrgChartPlus.ADP_OrgChart_WebService.UpdateRelationshipData> relationships) {
        return null;
    }
    webService static OrgChartPlus.ADP_OrgChart_WebService.UpdateReportsToResult updateOrgChart_ReportsTo2(List<OrgChartPlus.ADP_OrgChart_WebService.UpdateReportsToData> reports) {
        return null;
    }
    webService static void updateOrgChart_ReportsTo(List<OrgChartPlus.ADP_OrgChart_WebService.UpdateReportsToData> reports) {

    }
    webService static void updateOrgChart_TeamIntimacies(List<OrgChartPlus.ADP_OrgChart_WebService.UpdateTeamIntimacyData> intimacies) {

    }
    webService static OrgChartPlus.ADP_OrgChart_WebService.UpdateTeamMemberResult updateOrgChart_TeamMembers(Id coreId, Id chartId, List<OrgChartPlus.ADP_OrgChart_WebService.UpdateTeamMemberData> teamMembers) {
        return null;
    }
global class AvailableChart {
    @WebService
    webService Boolean AutomaticChart;
    @WebService
    webService Id ChartId;
    @WebService
    webService String Name;
    global AvailableChart() {

    }
}
global class DeleteParams {
    @WebService
    webService List<Id> deletedContacts;
    @WebService
    webService List<Id> deletedEntities;
    @WebService
    webService List<Id> deletedRelationships;
    @WebService
    webService List<Id> deletedTeamMembers;
    global DeleteParams() {

    }
}
global class EntityData {
    @WebService
    webService String AccountId;
    @WebService
    webService Double ChartPosX;
    @WebService
    webService Double ChartPosY;
    @WebService
    webService String CommonEntityId;
    @WebService
    webService String Contact;
    @WebService
    webService Integer DisplayOrder;
    @WebService
    webService String EntityId;
    @WebService
    webService Integer Influence;
    @WebService
    webService List<OrgChartPlus.ADP_OrgChart_WebService.EntityInvolvement> Involvements;
    @WebService
    webService String MatrixText;
    @WebService
    webService Double MoleculePosX;
    @WebService
    webService Double MoleculePosY;
    @WebService
    webService String Name;
    @WebService
    webService Integer Opinion;
    @WebService
    webService List<OrgChartPlus.ADP_OrgChart_WebService.OpportunityRole> OpportunityRoles;
    @WebService
    webService String ReportsToId;
    @WebService
    webService Integer ShowFlags;
    @WebService
    webService String Title;
    global EntityData() {

    }
}
global class EntityIdPair {
    @WebService
    webService Id CommonEntityId;
    @WebService
    webService Id EntityId;
    global EntityIdPair() {

    }
}
global class EntityInvolvement {
    @WebService
    webService String CoreId;
    @WebService
    webService Integer Influence;
    @WebService
    webService Integer Opinion;
    global EntityInvolvement() {

    }
}
global class InitialOrgChartData {
    @WebService
    webService String AccountName;
    @WebService
    webService List<OrgChartPlus.ADP_OrgChart_WebService.AvailableChart> AvailableCharts;
    @WebService
    webService Boolean IsAccountSiteAvailable;
    @WebService
    webService Boolean IsCreatable;
    @WebService
    webService Boolean IsDeletable;
    @WebService
    webService Boolean IsEditable;
    @WebService
    webService Boolean IsRenamable;
    @WebService
    webService String UserId;
    global InitialOrgChartData() {

    }
}
global class OpportunityRole {
    @WebService
    webService String OpportunityId;
    @WebService
    webService String Role;
    global OpportunityRole() {

    }
}
global class QueryIntimacyParams {
    @WebService
    webService List<Id> ContactIds;
    @WebService
    webService List<Id> TeamMemberIds;
    global QueryIntimacyParams() {

    }
}
global class QueryIntimacyResult {
    @WebService
    webService String ContactId;
    @WebService
    webService Integer Intimacy;
    @WebService
    webService String TeamMember_CompetitorId;
    @WebService
    webService String TeamMember_ContactId;
    @WebService
    webService String TeamMember_NonSFDCId;
    @WebService
    webService String TeamMember_UserId;
    global QueryIntimacyResult() {

    }
}
global class TeamMemberData {
    @WebService
    webService String Competitor;
    @WebService
    webService String Contact;
    @WebService
    webService Integer DisplayOrder;
    @WebService
    webService String Id;
    @WebService
    webService String Name;
    @WebService
    webService String NonSFUser;
    @WebService
    webService String User;
    global TeamMemberData() {

    }
}
global class TeamMemberSearchResult {
    @WebService
    webService String Id;
    @WebService
    webService String Name;
    @WebService
    webService Integer Source;
    global TeamMemberSearchResult() {

    }
}
global class UpdateEntityData {
    @WebService
    webService Integer Changes;
    @WebService
    webService Double ChartPosX;
    @WebService
    webService Double ChartPosY;
    @WebService
    webService String CommonEntityId;
    @WebService
    webService String ContactId;
    @WebService
    webService String EntityId;
    @WebService
    webService Integer Influence;
    @WebService
    webService Integer MatrixOrder;
    @WebService
    webService String MatrixText;
    @WebService
    webService Double MoleculePosX;
    @WebService
    webService Double MoleculePosY;
    @WebService
    webService Integer Opinion;
    @WebService
    webService Integer ShowFlags;
    global UpdateEntityData() {

    }
}
global class UpdateEntityResult {
    @WebService
    webService Boolean ReloadAfterSave;
    @WebService
    webService Integer ReloadAfterSaveI;
    @WebService
    webService List<OrgChartPlus.ADP_OrgChart_WebService.EntityIdPair> SavedIds;
    @WebService
    webService Boolean XReloadAfterSave;
    global UpdateEntityResult() {

    }
}
global class UpdateRelationshipData {
    @WebService
    webService String DestEntityId;
    @WebService
    webService String RelType;
    @WebService
    webService String SourceEntityId;
    global UpdateRelationshipData() {

    }
}
global class UpdateRelationshipResult {
    @WebService
    webService Boolean ReloadAfterSave;
    @WebService
    webService Integer ReloadAfterSaveI;
    @WebService
    webService List<Id> SavedIds;
    global UpdateRelationshipResult() {

    }
}
global class UpdateReportsToContact {
    @WebService
    webService String Contact;
    @WebService
    webService String Name;
    @WebService
    webService String ReportsToId;
    global UpdateReportsToContact() {

    }
}
global class UpdateReportsToData {
    @WebService
    webService String ContactId;
    @WebService
    webService String ReportsToId;
    global UpdateReportsToData() {

    }
}
global class UpdateReportsToResult {
    @WebService
    webService List<OrgChartPlus.ADP_OrgChart_WebService.UpdateReportsToContact> Contacts;
    @WebService
    webService Integer ResultCode;
    global UpdateReportsToResult() {

    }
}
global class UpdateTeamIntimacyData {
    @WebService
    webService String ContactId;
    @WebService
    webService Integer Intimacy;
    @WebService
    webService String TeamMemberId;
    global UpdateTeamIntimacyData() {

    }
}
global class UpdateTeamMemberData {
    @WebService
    webService Integer Changes;
    @WebService
    webService String CompetitorId;
    @WebService
    webService String ContactId;
    @WebService
    webService String Id;
    @WebService
    webService Integer MatrixOrder;
    @WebService
    webService String NonSFUserId;
    @WebService
    webService String UserId;
    global UpdateTeamMemberData() {

    }
}
global class UpdateTeamMemberResult {
    @WebService
    webService Boolean ReloadAfterSave;
    @WebService
    webService Integer ReloadAfterSaveI;
    @WebService
    webService List<Id> SavedIds;
    global UpdateTeamMemberResult() {

    }
}
}
