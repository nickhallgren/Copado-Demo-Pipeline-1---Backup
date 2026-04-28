/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class MetadataService {
    global static String SOAP_M_URI;
    global MetadataService() {

    }
    global static usf.MetadataService.MetadataPort createService() {
        return null;
    }
    global static void handleSaveResults(usf.MetadataService.SaveResult saveResult) {

    }
global class AccessMapping {
    global String accessLevel;
    global String object_x;
    global String objectField;
    global String userField;
    global AccessMapping() {

    }
}
global class AccountSettings extends usf.MetadataService.Metadata {
    global Boolean enableAccountOwnerReport;
    global Boolean enableAccountTeams;
    global String fullName;
    global Boolean showViewHierarchyLink;
    global String type;
    global AccountSettings() {

    }
}
global class AccountSharingRuleSettings {
    global String caseAccessLevel;
    global String contactAccessLevel;
    global String opportunityAccessLevel;
    global AccountSharingRuleSettings() {

    }
}
global class ActionLinkGroupTemplate extends usf.MetadataService.Metadata {
    global List<usf.MetadataService.ActionLinkTemplate> actionLinkTemplates;
    global String category;
    global String executionsAllowed;
    global String fullName;
    global Integer hoursUntilExpiration;
    global Boolean isPublished;
    global String name;
    global String type;
    global ActionLinkGroupTemplate() {

    }
}
global class ActionLinkTemplate {
    global String actionUrl;
    global String headers;
    global Boolean isConfirmationRequired;
    global Boolean isGroupDefault;
    global String label;
    global String labelKey;
    global String linkType;
    global String method;
    global Integer position;
    global String requestBody;
    global String userAlias;
    global String userVisibility;
    global ActionLinkTemplate() {

    }
}
global class ActionOverride {
    global String actionName;
    global String comment;
    global String content;
    global String formFactor;
    global Boolean skipRecordTypeSelect;
    global String type_x;
    global ActionOverride() {

    }
}
global class ActivitiesSettings extends usf.MetadataService.Metadata {
    global Boolean allowUsersToRelateMultipleContactsToTasksAndEvents;
    global Boolean autoRelateEventAttendees;
    global Boolean enableActivityReminders;
    global Boolean enableClickCreateEvents;
    global Boolean enableDragAndDropScheduling;
    global Boolean enableEmailTracking;
    global Boolean enableGroupTasks;
    global Boolean enableListViewScheduling;
    global Boolean enableLogNote;
    global Boolean enableMultidayEvents;
    global Boolean enableRecurringEvents;
    global Boolean enableRecurringTasks;
    global Boolean enableSidebarCalendarShortcut;
    global Boolean enableSimpleTaskCreateUI;
    global Boolean enableUNSTaskDelegatedToNotifications;
    global String fullName;
    global String meetingRequestsLogo;
    global Boolean showCustomLogoMeetingRequests;
    global Boolean showEventDetailsMultiUserCalendar;
    global Boolean showHomePageHoverLinksForEvents;
    global Boolean showMyTasksHoverLinks;
    global String type;
    global ActivitiesSettings() {

    }
}
global class AddressSettings extends usf.MetadataService.Metadata {
    global usf.MetadataService.CountriesAndStates countriesAndStates;
    global String fullName;
    global String type;
    global AddressSettings() {

    }
}
global class AdjustmentsSettings {
    global Boolean enableAdjustments;
    global Boolean enableOwnerAdjustments;
    global AdjustmentsSettings() {

    }
}
global class AgentConfigAssignments {
    global usf.MetadataService.AgentConfigProfileAssignments profiles;
    global usf.MetadataService.AgentConfigUserAssignments users;
    global AgentConfigAssignments() {

    }
}
global class AgentConfigButtons {
    global List<String> button;
    global AgentConfigButtons() {

    }
}
global class AgentConfigProfileAssignments {
    global List<String> profile;
    global AgentConfigProfileAssignments() {

    }
}
global class AgentConfigSkills {
    global List<String> skill;
    global AgentConfigSkills() {

    }
}
global class AgentConfigUserAssignments {
    global List<String> user_x;
    global AgentConfigUserAssignments() {

    }
}
global class AllOrNoneHeader_element {
    global Boolean allOrNone;
    global AllOrNoneHeader_element() {

    }
}
global class AnalyticSnapshot extends usf.MetadataService.Metadata {
    global String description;
    global String fullName;
    global String groupColumn;
    global List<usf.MetadataService.AnalyticSnapshotMapping> mappings;
    global String name;
    global String runningUser;
    global String sourceReport;
    global String targetObject;
    global String type;
    global AnalyticSnapshot() {

    }
}
global class AnalyticSnapshotMapping {
    global String aggregateType;
    global String sourceField;
    global String sourceType;
    global String targetField;
    global AnalyticSnapshotMapping() {

    }
}
global class AnalyticsCloudComponentLayoutItem {
    global String assetType;
    global String devName;
    global String error;
    global String filter;
    global Integer height;
    global Boolean hideOnError;
    global Boolean showHeader;
    global Boolean showSharing;
    global Boolean showTitle;
    global String width;
    global AnalyticsCloudComponentLayoutItem() {

    }
}
global class ApexClass extends usf.MetadataService.MetadataWithContent {
    global Double apiVersion;
    global String content;
    global String fullName;
    global List<usf.MetadataService.PackageVersion> packageVersions;
    global String status;
    global String type;
    global ApexClass() {

    }
}
global class ApexComponent extends usf.MetadataService.MetadataWithContent {
    global Double apiVersion;
    global String content;
    global String description;
    global String fullName;
    global String label;
    global List<usf.MetadataService.PackageVersion> packageVersions;
    global String type;
    global ApexComponent() {

    }
}
global class ApexPage extends usf.MetadataService.MetadataWithContent {
    global Double apiVersion;
    global Boolean availableInTouch;
    global Boolean confirmationTokenRequired;
    global String content;
    global String description;
    global String fullName;
    global String label;
    global List<usf.MetadataService.PackageVersion> packageVersions;
    global String type;
    global ApexPage() {

    }
}
global class ApexTestSuite extends usf.MetadataService.Metadata {
    global String fullName;
    global List<String> testClassName;
    global String type;
    global ApexTestSuite() {

    }
}
global class ApexTrigger extends usf.MetadataService.MetadataWithContent {
    global Double apiVersion;
    global String content;
    global String fullName;
    global List<usf.MetadataService.PackageVersion> packageVersions;
    global String status;
    global String type;
    global ApexTrigger() {

    }
}
global class AppActionOverride {
    global String pageOrSobjectType;
    global AppActionOverride() {

    }
}
global class AppBrand {
    global String footerColor;
    global String headerColor;
    global String logo;
    global Integer logoVersion;
    global Boolean shouldOverrideOrgTheme;
    global AppBrand() {

    }
}
global class AppComponentList {
    global String alignment;
    global List<String> components;
    global AppComponentList() {

    }
}
global class AppMenu extends usf.MetadataService.Metadata {
    global List<usf.MetadataService.AppMenuItem> appMenuItems;
    global String fullName;
    global String type;
    global AppMenu() {

    }
}
global class AppMenuItem {
    global String name;
    global String type_x;
    global AppMenuItem() {

    }
}
global class AppPreferences {
    global Boolean enableCustomizeMyTabs;
    global Boolean enableKeyboardShortcuts;
    global Boolean enableListViewHover;
    global Boolean enableListViewReskin;
    global Boolean enableMultiMonitorComponents;
    global Boolean enablePinTabs;
    global Boolean enableTabHover;
    global Boolean enableTabLimits;
    global Boolean saveUserSessions;
    global AppPreferences() {

    }
}
global class AppProfileActionOverride {
    global String profile;
    global AppProfileActionOverride() {

    }
}
global class AppWorkspaceConfig {
    global List<usf.MetadataService.WorkspaceMapping> mappings;
    global AppWorkspaceConfig() {

    }
}
global class ApprovalAction {
    global List<usf.MetadataService.WorkflowActionReference> action;
    global ApprovalAction() {

    }
}
global class ApprovalEntryCriteria {
    global String booleanFilter;
    global List<usf.MetadataService.FilterItem> criteriaItems;
    global String formula;
    global ApprovalEntryCriteria() {

    }
}
global class ApprovalPageField {
    global List<String> field;
    global ApprovalPageField() {

    }
}
global class ApprovalProcess extends usf.MetadataService.Metadata {
    global Boolean active;
    global List<usf.MetadataService.ApprovalSubmitter> allowedSubmitters;
    global Boolean allowRecall;
    global usf.MetadataService.ApprovalPageField approvalPageFields;
    global List<usf.MetadataService.ApprovalStep> approvalStep;
    global String description;
    global String emailTemplate;
    global Boolean enableMobileDeviceAccess;
    global usf.MetadataService.ApprovalEntryCriteria entryCriteria;
    global usf.MetadataService.ApprovalAction finalApprovalActions;
    global Boolean finalApprovalRecordLock;
    global usf.MetadataService.ApprovalAction finalRejectionActions;
    global Boolean finalRejectionRecordLock;
    global String fullName;
    global usf.MetadataService.ApprovalAction initialSubmissionActions;
    global String label;
    global usf.MetadataService.NextAutomatedApprover nextAutomatedApprover;
    global String postTemplate;
    global usf.MetadataService.ApprovalAction recallActions;
    global String recordEditability;
    global Boolean showApprovalHistory;
    global String type;
    global ApprovalProcess() {

    }
}
global class ApprovalStep {
    global Boolean allowDelegate;
    global usf.MetadataService.ApprovalAction approvalActions;
    global usf.MetadataService.ApprovalStepApprover assignedApprover;
    global String description;
    global usf.MetadataService.ApprovalEntryCriteria entryCriteria;
    global String ifCriteriaNotMet;
    global String label;
    global String name;
    global usf.MetadataService.ApprovalStepRejectBehavior rejectBehavior;
    global usf.MetadataService.ApprovalAction rejectionActions;
    global ApprovalStep() {

    }
}
global class ApprovalStepApprover {
    global List<usf.MetadataService.Approver> approver;
    global String whenMultipleApprovers;
    global ApprovalStepApprover() {

    }
}
global class ApprovalStepRejectBehavior {
    global String type_x;
    global ApprovalStepRejectBehavior() {

    }
}
global class ApprovalSubmitter {
    global String submitter;
    global String type_x;
    global ApprovalSubmitter() {

    }
}
global class Approver {
    global String name;
    global String type_x;
    global Approver() {

    }
}
global class ArticleTypeChannelDisplay {
    global List<usf.MetadataService.ArticleTypeTemplate> articleTypeTemplates;
    global ArticleTypeChannelDisplay() {

    }
}
global class ArticleTypeTemplate {
    global String channel;
    global String page_x;
    global String template;
    global ArticleTypeTemplate() {

    }
}
global class AssignmentRule extends usf.MetadataService.Metadata {
    global Boolean active;
    global String fullName;
    global List<usf.MetadataService.RuleEntry> ruleEntry;
    global String type;
    global AssignmentRule() {

    }
}
global class AssignmentRules extends usf.MetadataService.Metadata {
    global List<usf.MetadataService.AssignmentRule> assignmentRule;
    global String fullName;
    global String type;
    global AssignmentRules() {

    }
}
global class AssistantRecommendationType {
    global String description;
    global String masterLabel;
    global usf.MetadataService.PlatformActionList platformActionlist;
    global String sobjectType;
    global String title;
    global AssistantRecommendationType() {

    }
}
global class AsyncResult {
    global Boolean done;
    global String id;
    global String message;
    global String state;
    global String statusCode;
    global AsyncResult() {

    }
}
global class Attachment {
    global String content;
    global String name;
    global Attachment() {

    }
}
global class AuraDefinitionBundle extends usf.MetadataService.Metadata {
    global Double apiVersion;
    global String controllerContent;
    global String description;
    global String designContent;
    global String documentationContent;
    global String fullName;
    global String helperContent;
    global String markup;
    global String modelContent;
    global List<usf.MetadataService.PackageVersion> packageVersions;
    global String rendererContent;
    global String styleContent;
    global String SVGContent;
    global String testsuiteContent;
    global String type;
    global String type_x;
    global AuraDefinitionBundle() {

    }
}
global class AuthProvider extends usf.MetadataService.Metadata {
    global String authorizeUrl;
    global String consumerKey;
    global String consumerSecret;
    global String customMetadataTypeRecord;
    global String defaultScopes;
    global String errorUrl;
    global String executionUser;
    global String friendlyName;
    global String fullName;
    global String iconUrl;
    global String idTokenIssuer;
    global Boolean includeOrgIdInIdentifier;
    global String logoutUrl;
    global String plugin;
    global String portal;
    global String providerType;
    global String registrationHandler;
    global Boolean sendAccessTokenInHeader;
    global Boolean sendClientCredentialsInHeader;
    global String tokenUrl;
    global String type;
    global String userInfoUrl;
    global AuthProvider() {

    }
}
global class AutoResponseRule extends usf.MetadataService.Metadata {
    global Boolean active;
    global String fullName;
    global List<usf.MetadataService.RuleEntry> ruleEntry;
    global String type;
    global AutoResponseRule() {

    }
}
global class AutoResponseRules extends usf.MetadataService.Metadata {
    global List<usf.MetadataService.AutoResponseRule> autoResponseRule;
    global String fullName;
    global String type;
    global AutoResponseRules() {

    }
}
global class BrandingSet extends usf.MetadataService.Metadata {
    global List<usf.MetadataService.BrandingSetProperty> brandingSetProperty;
    global String description;
    global String fullName;
    global String masterLabel;
    global String type;
    global String type_x;
    global BrandingSet() {

    }
}
global class BrandingSetProperty {
    global String propertyName;
    global String propertyValue;
    global BrandingSetProperty() {

    }
}
global class BusinessHoursEntry extends usf.MetadataService.Metadata {
    global Boolean active;
    global Boolean default_x;
    global Datetime fridayEndTime;
    global Datetime fridayStartTime;
    global String fullName;
    global Datetime mondayEndTime;
    global Datetime mondayStartTime;
    global String name;
    global Datetime saturdayEndTime;
    global Datetime saturdayStartTime;
    global Datetime sundayEndTime;
    global Datetime sundayStartTime;
    global Datetime thursdayEndTime;
    global Datetime thursdayStartTime;
    global String timeZoneId;
    global Datetime tuesdayEndTime;
    global Datetime tuesdayStartTime;
    global String type;
    global Datetime wednesdayEndTime;
    global Datetime wednesdayStartTime;
    global BusinessHoursEntry() {

    }
}
global class BusinessHoursSettings extends usf.MetadataService.Metadata {
    global List<usf.MetadataService.BusinessHoursEntry> businessHours;
    global String fullName;
    global List<usf.MetadataService.Holiday> holidays;
    global String type;
    global BusinessHoursSettings() {

    }
}
global class BusinessProcess extends usf.MetadataService.Metadata {
    global String description;
    global String fullName;
    global Boolean isActive;
    global String type;
    global List<usf.MetadataService.PicklistValue> values;
    global BusinessProcess() {

    }
}
global class CallCenter extends usf.MetadataService.Metadata {
    global String adapterUrl;
    global String customSettings;
    global String displayName;
    global String displayNameLabel;
    global String fullName;
    global String internalNameLabel;
    global List<usf.MetadataService.CallCenterSection> sections;
    global String type;
    global String version;
    global CallCenter() {

    }
}
global class CallCenterItem {
    global String label;
    global String name;
    global String value;
    global CallCenterItem() {

    }
}
global class CallCenterSection {
    global List<usf.MetadataService.CallCenterItem> items;
    global String label;
    global String name;
    global CallCenterSection() {

    }
}
global class CallOptions_element {
    global String client;
    global CallOptions_element() {

    }
}
global class CampaignInfluenceModel {
    global Boolean isActive;
    global Boolean isDefaultModel;
    global Boolean isModelLocked;
    global String modelDescription;
    global String name;
    global String recordPreference;
    global CampaignInfluenceModel() {

    }
}
global class CancelDeployResult {
    global Boolean done;
    global String id;
    global CancelDeployResult() {

    }
}
global class CaseSettings extends usf.MetadataService.Metadata {
    global String caseAssignNotificationTemplate;
    global String caseCloseNotificationTemplate;
    global String caseCommentNotificationTemplate;
    global String caseCreateNotificationTemplate;
    global List<usf.MetadataService.FeedItemSettings> caseFeedItemSettings;
    global Boolean closeCaseThroughStatusChange;
    global String defaultCaseOwner;
    global String defaultCaseOwnerType;
    global String defaultCaseUser;
    global String emailActionDefaultsHandlerClass;
    global usf.MetadataService.EmailToCaseSettings emailToCase;
    global Boolean enableCaseFeed;
    global Boolean enableDraftEmails;
    global Boolean enableEarlyEscalationRuleTriggers;
    global Boolean enableEmailActionDefaultsHandler;
    global Boolean enableSuggestedArticlesApplication;
    global Boolean enableSuggestedArticlesCustomerPortal;
    global Boolean enableSuggestedArticlesPartnerPortal;
    global Boolean enableSuggestedSolutions;
    global String fullName;
    global Boolean keepRecordTypeOnAssignmentRule;
    global Boolean notifyContactOnCaseComment;
    global Boolean notifyDefaultCaseOwner;
    global Boolean notifyOwnerOnCaseComment;
    global Boolean notifyOwnerOnCaseOwnerChange;
    global Boolean showEmailAttachmentsInCaseAttachmentsRL;
    global Boolean showFewerCloseActions;
    global String systemUserEmail;
    global String type;
    global Boolean useSystemEmailAddress;
    global Boolean useSystemUserAsDefaultCaseUser;
    global usf.MetadataService.WebToCaseSettings webToCase;
    global CaseSettings() {

    }
}
global class CaseSubjectParticle extends usf.MetadataService.Metadata {
    global String fullName;
    global Integer index;
    global String textField;
    global String type;
    global String type_x;
    global CaseSubjectParticle() {

    }
}
global class Certificate extends usf.MetadataService.MetadataWithContent {
    global Boolean caSigned;
    global String content;
    global Boolean encryptedWithPlatformEncryption;
    global Datetime expirationDate;
    global String fullName;
    global Integer keySize;
    global String masterLabel;
    global Boolean privateKeyExportable;
    global String type;
    global Certificate() {

    }
}
global class ChannelLayout extends usf.MetadataService.Metadata {
    global List<String> enabledChannels;
    global String fullName;
    global String label;
    global List<usf.MetadataService.ChannelLayoutItem> layoutItems;
    global String recordType;
    global String type;
    global ChannelLayout() {

    }
}
global class ChannelLayoutItem {
    global String field;
    global ChannelLayoutItem() {

    }
}
global class ChartSummary {
    global String aggregate;
    global String axisBinding;
    global String column;
    global ChartSummary() {

    }
}
global class ChatterAnswersReputationLevel {
    global String name;
    global Integer value;
    global ChatterAnswersReputationLevel() {

    }
}
global class ChatterAnswersSettings extends usf.MetadataService.Metadata {
    global Boolean emailFollowersOnBestAnswer;
    global Boolean emailFollowersOnReply;
    global Boolean emailOwnerOnPrivateReply;
    global Boolean emailOwnerOnReply;
    global Boolean enableAnswerViaEmail;
    global Boolean enableChatterAnswers;
    global Boolean enableFacebookSSO;
    global Boolean enableInlinePublisher;
    global Boolean enableReputation;
    global Boolean enableRichTextEditor;
    global String facebookAuthProvider;
    global String fullName;
    global Boolean showInPortals;
    global String type;
    global ChatterAnswersSettings() {

    }
}
global class ChatterExtension {
    global String compositionComponent;
    global String description;
    global String extensionName;
    global String headerText;
    global String hoverText;
    global String icon;
    global Boolean isProtected;
    global String masterLabel;
    global String renderComponent;
    global String type_x;
    global ChatterExtension() {

    }
}
global class ChatterMobileSettings {
    global Boolean enablePushNotifications;
    global ChatterMobileSettings() {

    }
}
global class CleanDataService {
    global List<usf.MetadataService.CleanRule> cleanRules;
    global String description;
    global String masterLabel;
    global String matchEngine;
    global CleanDataService() {

    }
}
global class CleanRule {
    global Boolean bulkEnabled;
    global Boolean bypassTriggers;
    global Boolean bypassWorkflow;
    global String description;
    global String developerName;
    global List<usf.MetadataService.FieldMapping> fieldMappings;
    global String masterLabel;
    global String matchRule;
    global String sourceSobjectType;
    global String status;
    global String targetSobjectType;
    global CleanRule() {

    }
}
global class CodeCoverageResult {
    global List<usf.MetadataService.CodeLocation> dmlInfo;
    global String id;
    global List<usf.MetadataService.CodeLocation> locationsNotCovered;
    global List<usf.MetadataService.CodeLocation> methodInfo;
    global String name;
    global String namespace;
    global Integer numLocations;
    global Integer numLocationsNotCovered;
    global List<usf.MetadataService.CodeLocation> soqlInfo;
    global List<usf.MetadataService.CodeLocation> soslInfo;
    global String type_x;
    global CodeCoverageResult() {

    }
}
global class CodeCoverageWarning {
    global String id;
    global String message;
    global String name;
    global String namespace;
    global CodeCoverageWarning() {

    }
}
global class CodeLocation {
    global Integer column;
    global Integer line;
    global Integer numExecutions;
    global Double time_x;
    global CodeLocation() {

    }
}
global class Community extends usf.MetadataService.Metadata {
    global Boolean active;
    global String chatterAnswersFacebookSsoUrl;
    global String communityFeedPage;
    global String dataCategoryName;
    global String description;
    global String emailFooterDocument;
    global String emailHeaderDocument;
    global String emailNotificationUrl;
    global Boolean enableChatterAnswers;
    global Boolean enablePrivateQuestions;
    global String expertsGroup;
    global String fullName;
    global String portal;
    global usf.MetadataService.ReputationLevels reputationLevels;
    global Boolean showInPortal;
    global String site;
    global String type;
    global Community() {

    }
}
global class CommunityCustomThemeLayoutType {
    global String description;
    global String label;
    global CommunityCustomThemeLayoutType() {

    }
}
global class CommunityRoles {
    global String customerUserRole;
    global String employeeUserRole;
    global String partnerUserRole;
    global CommunityRoles() {

    }
}
global class CommunityTemplateBundleInfo {
    global String description;
    global String image;
    global Integer order;
    global String title;
    global String type_x;
    global CommunityTemplateBundleInfo() {

    }
}
global class CommunityTemplateDefinition {
    global String baseTemplate;
    global List<usf.MetadataService.CommunityTemplateBundleInfo> bundlesInfo;
    global String category;
    global String defaultBrandingSet;
    global String defaultThemeDefinition;
    global String description;
    global Boolean enableExtendedCleanUpOnDelete;
    global String masterLabel;
    global List<usf.MetadataService.NavigationLinkSet> navigationLinkSet;
    global List<usf.MetadataService.CommunityTemplatePageSetting> pageSetting;
    global CommunityTemplateDefinition() {

    }
}
global class CommunityTemplatePageSetting {
    global String page_x;
    global String themeLayout;
    global CommunityTemplatePageSetting() {

    }
}
global class CommunityThemeDefinition {
    global List<usf.MetadataService.CommunityCustomThemeLayoutType> customThemeLayoutType;
    global String description;
    global Boolean enableExtendedCleanUpOnDelete;
    global String masterLabel;
    global List<usf.MetadataService.CommunityThemeSetting> themeSetting;
    global CommunityThemeDefinition() {

    }
}
global class CommunityThemeSetting {
    global String customThemeLayoutType;
    global String themeLayout;
    global String themeLayoutType;
    global CommunityThemeSetting() {

    }
}
global class CompactLayout extends usf.MetadataService.Metadata {
    global List<String> fields;
    global String fullName;
    global String label;
    global String type;
    global CompactLayout() {

    }
}
global class CompanySettings extends usf.MetadataService.Metadata {
    global usf.MetadataService.FiscalYearSettings fiscalYear;
    global String fullName;
    global String type;
    global CompanySettings() {

    }
}
global class ComponentInstance {
    global List<usf.MetadataService.ComponentInstanceProperty> componentInstanceProperties;
    global String componentName;
    global usf.MetadataService.UiFormulaRule visibilityRule;
    global ComponentInstance() {

    }
}
global class ComponentInstanceProperty {
    global String name;
    global String type_x;
    global String value;
    global ComponentInstanceProperty() {

    }
}
global class ConnectedApp extends usf.MetadataService.Metadata {
    global List<usf.MetadataService.ConnectedAppAttribute> attributes;
    global usf.MetadataService.ConnectedAppCanvasConfig canvasConfig;
    global String contactEmail;
    global String contactPhone;
    global String description;
    global String fullName;
    global String iconUrl;
    global String infoUrl;
    global List<usf.MetadataService.ConnectedAppIpRange> ipRanges;
    global String label;
    global String logoUrl;
    global usf.MetadataService.ConnectedAppMobileDetailConfig mobileAppConfig;
    global String mobileStartUrl;
    global usf.MetadataService.ConnectedAppOauthConfig oauthConfig;
    global String plugin;
    global usf.MetadataService.ConnectedAppSamlConfig samlConfig;
    global String startUrl;
    global String type;
    global ConnectedApp() {

    }
}
global class ConnectedAppAttribute {
    global String formula;
    global String key;
    global ConnectedAppAttribute() {

    }
}
global class ConnectedAppCanvasConfig {
    global String accessMethod;
    global String canvasUrl;
    global String lifecycleClass;
    global List<String> locations;
    global List<String> options;
    global String samlInitiationMethod;
    global ConnectedAppCanvasConfig() {

    }
}
global class ConnectedAppIpRange {
    global String description;
    global String end_x;
    global String start;
    global ConnectedAppIpRange() {

    }
}
global class ConnectedAppMobileDetailConfig {
    global String applicationBinaryFile;
    global String applicationBinaryFileName;
    global String applicationBundleIdentifier;
    global Integer applicationFileLength;
    global String applicationIconFile;
    global String applicationIconFileName;
    global String applicationInstallUrl;
    global String devicePlatform;
    global String deviceType;
    global String minimumOsVersion;
    global Boolean privateApp;
    global String version;
    global ConnectedAppMobileDetailConfig() {

    }
}
global class ConnectedAppOauthConfig {
    global String callbackUrl;
    global String certificate;
    global String consumerKey;
    global String consumerSecret;
    global List<String> scopes;
    global String singleLogoutUrl;
    global ConnectedAppOauthConfig() {

    }
}
global class ConnectedAppSamlConfig {
    global String acsUrl;
    global String certificate;
    global String encryptionCertificate;
    global String encryptionType;
    global String entityUrl;
    global String issuer;
    global String samlIdpSLOBindingEnum;
    global String samlNameIdFormat;
    global String samlSloUrl;
    global String samlSubjectCustomAttr;
    global String samlSubjectType;
    global ConnectedAppSamlConfig() {

    }
}
global class Container {
    global Integer height;
    global Boolean isContainerAutoSizeEnabled;
    global String region;
    global List<usf.MetadataService.SidebarComponent> sidebarComponents;
    global String style;
    global String unit;
    global Integer width;
    global Container() {

    }
}
global class ContentAsset extends usf.MetadataService.Metadata {
    global String format;
    global String fullName;
    global String language;
    global String masterLabel;
    global String originNetwork;
    global usf.MetadataService.ContentAssetRelationships relationships;
    global String type;
    global usf.MetadataService.ContentAssetVersions versions;
    global ContentAsset() {

    }
}
global class ContentAssetLink {
    global String access;
    global Boolean isManagingWorkspace;
    global String name;
    global ContentAssetLink() {

    }
}
global class ContentAssetRelationships {
    global List<usf.MetadataService.ContentAssetLink> insightsApplication;
    global List<usf.MetadataService.ContentAssetLink> network;
    global usf.MetadataService.ContentAssetLink organization;
    global List<usf.MetadataService.ContentAssetLink> workspace;
    global ContentAssetRelationships() {

    }
}
global class ContentAssetVersion {
    global String number_x;
    global String pathOnClient;
    global String zipEntry;
    global ContentAssetVersion() {

    }
}
global class ContentAssetVersions {
    global List<usf.MetadataService.ContentAssetVersion> version;
    global ContentAssetVersions() {

    }
}
global class ContractSettings extends usf.MetadataService.Metadata {
    global Boolean autoCalculateEndDate;
    global String autoExpirationDelay;
    global String autoExpirationRecipient;
    global Boolean autoExpireContracts;
    global Boolean enableContractHistoryTracking;
    global String fullName;
    global Boolean notifyOwnersOnContractExpiration;
    global String type;
    global ContractSettings() {

    }
}
global class CorsWhitelistOrigin extends usf.MetadataService.Metadata {
    global String fullName;
    global String type;
    global String urlPattern;
    global CorsWhitelistOrigin() {

    }
}
global class CountriesAndStates {
    global List<usf.MetadataService.Country> countries;
    global CountriesAndStates() {

    }
}
global class Country {
    global Boolean active;
    global String integrationValue;
    global String isoCode;
    global String label;
    global Boolean orgDefault;
    global Boolean standard;
    global List<usf.MetadataService.State> states;
    global Boolean visible;
    global Country() {

    }
}
global class CspTrustedSite extends usf.MetadataService.Metadata {
    global String description;
    global String endpointUrl;
    global String fullName;
    global Boolean isActive;
    global String type;
    global CspTrustedSite() {

    }
}
global class CustomApplication extends usf.MetadataService.Metadata {
    global List<usf.MetadataService.AppActionOverride> actionOverrides;
    global usf.MetadataService.AppBrand brand;
    global usf.MetadataService.ServiceCloudConsoleConfig consoleConfig;
    global String defaultLandingTab;
    global String description;
    global List<String> formFactors;
    global String fullName;
    global Boolean isServiceCloudConsole;
    global String label;
    global String logo;
    global String navType;
    global usf.MetadataService.AppPreferences preferences;
    global List<usf.MetadataService.AppProfileActionOverride> profileActionOverrides;
    global String setupExperience;
    global List<String> subscriberTabs;
    global List<String> tabs;
    global String type;
    global String uiType;
    global String utilityBar;
    global usf.MetadataService.AppWorkspaceConfig workspaceConfig;
    global CustomApplication() {

    }
}
global class CustomApplicationComponent extends usf.MetadataService.Metadata {
    global String buttonIconUrl;
    global String buttonStyle;
    global String buttonText;
    global Integer buttonWidth;
    global String fullName;
    global Integer height;
    global Boolean isHeightFixed;
    global Boolean isHidden;
    global Boolean isWidthFixed;
    global String type;
    global String visualforcePage;
    global Integer width;
    global CustomApplicationComponent() {

    }
}
global class CustomApplicationTranslation {
    global String label;
    global String name;
    global CustomApplicationTranslation() {

    }
}
global class CustomConsoleComponents {
    global usf.MetadataService.PrimaryTabComponents primaryTabComponents;
    global usf.MetadataService.SubtabComponents subtabComponents;
    global CustomConsoleComponents() {

    }
}
global class CustomDataType extends usf.MetadataService.Metadata {
    global List<usf.MetadataService.CustomDataTypeComponent> customDataTypeComponents;
    global String description;
    global String displayFormula;
    global Boolean editComponentsOnSeparateLines;
    global String fullName;
    global String label;
    global Boolean rightAligned;
    global Boolean supportComponentsInReports;
    global String type;
    global CustomDataType() {

    }
}
global class CustomDataTypeComponent {
    global String developerSuffix;
    global Boolean enforceFieldRequiredness;
    global String label;
    global Integer length;
    global Integer precision;
    global Integer scale;
    global String sortOrder;
    global Integer sortPriority;
    global String type_x;
    global CustomDataTypeComponent() {

    }
}
global class CustomDataTypeComponentTranslation {
    global String developerSuffix;
    global String label;
    global CustomDataTypeComponentTranslation() {

    }
}
global class CustomDataTypeTranslation {
    global List<usf.MetadataService.CustomDataTypeComponentTranslation> components;
    global String customDataTypeName;
    global String description;
    global String label;
    global CustomDataTypeTranslation() {

    }
}
global class CustomExperience {
    global Boolean allowInternalUserLogin;
    global usf.MetadataService.CustomExperienceBranding branding;
    global String changePasswordEmailTemplate;
    global String emailFooterLogo;
    global String emailFooterText;
    global String emailSenderAddress;
    global String emailSenderName;
    global Boolean enableErrorPageOverridesForVisualforce;
    global String forgotPasswordEmailTemplate;
    global String picassoSite;
    global Boolean sendWelcomeEmail;
    global String site;
    global Boolean siteAsContainerEnabled;
    global String sObjectType;
    global usf.MetadataService.CustomExperienceTabSet tabs;
    global String urlPathPrefix;
    global String welcomeEmailTemplate;
    global CustomExperience() {

    }
}
global class CustomExperienceBranding {
    global String loginFooterText;
    global String loginLogo;
    global String pageFooter;
    global String pageHeader;
    global String primaryColor;
    global String primaryComplementColor;
    global String quaternaryColor;
    global String quaternaryComplementColor;
    global String secondaryColor;
    global String tertiaryColor;
    global String tertiaryComplementColor;
    global String zeronaryColor;
    global String zeronaryComplementColor;
    global CustomExperienceBranding() {

    }
}
global class CustomExperienceTabSet {
    global List<String> customTab;
    global String defaultTab;
    global List<String> standardTab;
    global CustomExperienceTabSet() {

    }
}
global class CustomFeedFilter {
    global List<usf.MetadataService.FeedFilterCriterion> criteria;
    global String description;
    global Boolean isProtected;
    global String label;
    global CustomFeedFilter() {

    }
}
global class CustomField extends usf.MetadataService.Metadata {
    global String businessOwnerGroup;
    global String businessOwnerUser;
    global String businessStatus;
    global Boolean caseSensitive;
    global String customDataType;
    global String defaultValue;
    global String deleteConstraint;
    global Boolean deprecated;
    global String description;
    global String displayFormat;
    global Boolean displayLocationInDecimal;
    global Boolean encrypted;
    global Boolean escapeMarkup;
    global String externalDeveloperName;
    global Boolean externalId;
    global String fieldManageability;
    global String formula;
    global String formulaTreatBlanksAs;
    global String fullName;
    global String inlineHelpText;
    global Boolean isConvertLeadDisabled;
    global Boolean isFilteringDisabled;
    global Boolean isNameField;
    global Boolean isSortingDisabled;
    global String label;
    global Integer length;
    global usf.MetadataService.LookupFilter lookupFilter;
    global String maskChar;
    global String maskType;
    global String metadataRelationshipControllingField;
    global Boolean populateExistingRows;
    global Integer precision;
    global String referenceTargetField;
    global String referenceTo;
    global String relationshipLabel;
    global String relationshipName;
    global Integer relationshipOrder;
    global Boolean reparentableMasterDetail;
    global Boolean required;
    global Boolean restrictedAdminField;
    global Integer scale;
    global String securityClassification;
    global Integer startingNumber;
    global Boolean stripMarkup;
    global String summarizedField;
    global List<usf.MetadataService.FilterItem> summaryFilterItems;
    global String summaryForeignKey;
    global String summaryOperation;
    global Boolean trackFeedHistory;
    global Boolean trackHistory;
    global Boolean trackTrending;
    global String type;
    global String type_x;
    global Boolean unique;
    global usf.MetadataService.ValueSet valueSet;
    global Integer visibleLines;
    global Boolean writeRequiresMasterRead;
    global CustomField() {

    }
}
global class CustomFieldTranslation {
    global List<usf.MetadataService.ObjectNameCaseValue> caseValues;
    global String gender;
    global String help;
    global String label;
    global usf.MetadataService.LookupFilterTranslation lookupFilter;
    global String name;
    global List<usf.MetadataService.PicklistValueTranslation> picklistValues;
    global String relationshipLabel;
    global String startsWith;
    global CustomFieldTranslation() {

    }
}
global class CustomLabel extends usf.MetadataService.Metadata {
    global String categories;
    global String fullName;
    global String language;
    global Boolean protected_x;
    global String shortDescription;
    global String type;
    global String value;
    global CustomLabel() {

    }
}
global class CustomLabelTranslation {
    global String label;
    global String name;
    global CustomLabelTranslation() {

    }
}
global class CustomLabels extends usf.MetadataService.Metadata {
    global String fullName;
    global List<usf.MetadataService.CustomLabel> labels;
    global String type;
    global CustomLabels() {

    }
}
global class CustomMetadata extends usf.MetadataService.Metadata {
    global String description;
    global String fullName;
    global String label;
    global Boolean protected_x;
    global String type;
    global List<usf.MetadataService.CustomMetadataValue> values;
    global CustomMetadata() {

    }
}
global class CustomMetadataValue {
    global String field;
    global String value;
    global CustomMetadataValue() {

    }
}
global class CustomNotificationType {
    global String customNotifTypeName;
    global String description;
    global Boolean desktop;
    global Boolean email;
    global String masterLabel;
    global Boolean mobile;
    global CustomNotificationType() {

    }
}
global class CustomObject extends usf.MetadataService.Metadata {
    global List<usf.MetadataService.ActionOverride> actionOverrides;
    global Boolean allowInChatterGroups;
    global usf.MetadataService.ArticleTypeChannelDisplay articleTypeChannelDisplay;
    global List<usf.MetadataService.BusinessProcess> businessProcesses;
    global String compactLayoutAssignment;
    global List<usf.MetadataService.CompactLayout> compactLayouts;
    global String customHelp;
    global String customHelpPage;
    global String customSettingsType;
    global String dataStewardGroup;
    global String dataStewardUser;
    global String deploymentStatus;
    global Boolean deprecated;
    global String description;
    global Boolean enableActivities;
    global Boolean enableBulkApi;
    global Boolean enableChangeDataCapture;
    global Boolean enableDivisions;
    global Boolean enableEnhancedLookup;
    global Boolean enableFeeds;
    global Boolean enableHistory;
    global Boolean enableReports;
    global Boolean enableSearch;
    global Boolean enableSharing;
    global Boolean enableStreamingApi;
    global String eventType;
    global String externalDataSource;
    global String externalName;
    global String externalRepository;
    global String externalSharingModel;
    global List<usf.MetadataService.CustomField> fields;
    global List<usf.MetadataService.FieldSet> fieldSets;
    global String fullName;
    global String gender;
    global usf.MetadataService.HistoryRetentionPolicy historyRetentionPolicy;
    global Boolean household;
    global List<usf.MetadataService.Index> indexes;
    global String label;
    global List<usf.MetadataService.ListView> listViews;
    global usf.MetadataService.CustomField nameField;
    global String pluralLabel;
    global List<usf.MetadataService.RecordType> recordTypes;
    global Boolean recordTypeTrackFeedHistory;
    global Boolean recordTypeTrackHistory;
    global usf.MetadataService.SearchLayouts searchLayouts;
    global String sharingModel;
    global List<usf.MetadataService.SharingReason> sharingReasons;
    global List<usf.MetadataService.SharingRecalculation> sharingRecalculations;
    global String startsWith;
    global String type;
    global List<usf.MetadataService.ValidationRule> validationRules;
    global String visibility;
    global List<usf.MetadataService.WebLink> webLinks;
    global CustomObject() {

    }
}
global class CustomObjectTranslation extends usf.MetadataService.Metadata {
    global List<usf.MetadataService.ObjectNameCaseValue> caseValues;
    global List<usf.MetadataService.CustomFieldTranslation> fields;
    global List<usf.MetadataService.FieldSetTranslation> fieldSets;
    global String fullName;
    global String gender;
    global List<usf.MetadataService.LayoutTranslation> layouts;
    global String nameFieldLabel;
    global List<usf.MetadataService.QuickActionTranslation> quickActions;
    global List<usf.MetadataService.RecordTypeTranslation> recordTypes;
    global List<usf.MetadataService.SharingReasonTranslation> sharingReasons;
    global List<usf.MetadataService.StandardFieldTranslation> standardFields;
    global String startsWith;
    global String type;
    global List<usf.MetadataService.ValidationRuleTranslation> validationRules;
    global List<usf.MetadataService.WebLinkTranslation> webLinks;
    global List<usf.MetadataService.WorkflowTaskTranslation> workflowTasks;
    global CustomObjectTranslation() {

    }
}
global class CustomPageWebLink extends usf.MetadataService.Metadata {
    global String availability;
    global String description;
    global String displayType;
    global String encodingKey;
    global String fullName;
    global Boolean hasMenubar;
    global Boolean hasScrollbars;
    global Boolean hasToolbar;
    global Integer height;
    global Boolean isResizable;
    global String linkType;
    global String masterLabel;
    global String openType;
    global String page_x;
    global String position;
    global Boolean protected_x;
    global Boolean requireRowSelection;
    global String scontrol;
    global Boolean showsLocation;
    global Boolean showsStatus;
    global String type;
    global String url;
    global Integer width;
    global CustomPageWebLink() {

    }
}
global class CustomPageWebLinkTranslation {
    global String label;
    global String name;
    global CustomPageWebLinkTranslation() {

    }
}
global class CustomPermission extends usf.MetadataService.Metadata {
    global String connectedApp;
    global String description;
    global String fullName;
    global String label;
    global List<usf.MetadataService.CustomPermissionDependencyRequired> requiredPermission;
    global String type;
    global CustomPermission() {

    }
}
global class CustomPermissionDependencyRequired {
    global String customPermission;
    global Boolean dependency;
    global CustomPermissionDependencyRequired() {

    }
}
global class CustomShortcut {
    global String description;
    global String eventName;
    global CustomShortcut() {

    }
}
global class CustomSite extends usf.MetadataService.Metadata {
    global Boolean active;
    global Boolean allowHomePage;
    global Boolean allowStandardAnswersPages;
    global Boolean allowStandardIdeasPages;
    global Boolean allowStandardLookups;
    global Boolean allowStandardPortalPages;
    global Boolean allowStandardSearch;
    global String analyticsTrackingCode;
    global String authorizationRequiredPage;
    global String bandwidthExceededPage;
    global Boolean browserXssProtection;
    global String changePasswordPage;
    global String chatterAnswersForgotPasswordConfirmPage;
    global String chatterAnswersForgotPasswordPage;
    global String chatterAnswersHelpPage;
    global String chatterAnswersLoginPage;
    global String chatterAnswersRegistrationPage;
    global String clickjackProtectionLevel;
    global Boolean contentSniffingProtection;
    global Boolean cspUpgradeInsecureRequests;
    global List<usf.MetadataService.SiteWebAddress> customWebAddresses;
    global String description;
    global String favoriteIcon;
    global String fileNotFoundPage;
    global String forgotPasswordPage;
    global String fullName;
    global String genericErrorPage;
    global String guestProfile;
    global String inactiveIndexPage;
    global String indexPage;
    global String inMaintenancePage;
    global String masterLabel;
    global String myProfilePage;
    global String portal;
    global Boolean referrerPolicyOriginWhenCrossOrigin;
    global Boolean requireHttps;
    global Boolean requireInsecurePortalAccess;
    global String robotsTxtPage;
    global String rootComponent;
    global String selfRegPage;
    global String serverIsDown;
    global String siteAdmin;
    global List<usf.MetadataService.SiteRedirectMapping> siteRedirectMappings;
    global String siteTemplate;
    global String siteType;
    global String subdomain;
    global String type;
    global String urlPathPrefix;
    global CustomSite() {

    }
}
global class CustomTab extends usf.MetadataService.Metadata {
    global List<usf.MetadataService.ActionOverride> actionOverrides;
    global String auraComponent;
    global Boolean customObject;
    global String description;
    global String flexiPage;
    global Integer frameHeight;
    global String fullName;
    global Boolean hasSidebar;
    global String icon;
    global String label;
    global Boolean mobileReady;
    global String motif;
    global String page_x;
    global String scontrol;
    global String splashPageLink;
    global String type;
    global String url;
    global String urlEncodingKey;
    global CustomTab() {

    }
}
global class CustomTabTranslation {
    global String label;
    global String name;
    global CustomTabTranslation() {

    }
}
global virtual class CustomValue extends usf.MetadataService.Metadata {
    global String color;
    global Boolean default_x;
    global String description;
    global String fullName;
    global Boolean isActive;
    global String label;
    global String type;
    global CustomValue() {

    }
}
global class Dashboard extends usf.MetadataService.Metadata {
    global String backgroundEndColor;
    global String backgroundFadeDirection;
    global String backgroundStartColor;
    global String chartTheme;
    global String colorPalette;
    global String dashboardChartTheme;
    global String dashboardColorPalette;
    global List<usf.MetadataService.DashboardFilter> dashboardFilters;
    global usf.MetadataService.DashboardGridLayout dashboardGridLayout;
    global String dashboardResultRefreshedDate;
    global String dashboardResultRunningUser;
    global String dashboardType;
    global String description;
    global String folderName;
    global String fullName;
    global Boolean isGridLayout;
    global usf.MetadataService.DashboardComponentSection leftSection;
    global usf.MetadataService.DashboardComponentSection middleSection;
    global Integer numSubscriptions;
    global usf.MetadataService.DashboardComponentSection rightSection;
    global String runningUser;
    global String textColor;
    global String title;
    global String titleColor;
    global Integer titleSize;
    global String type;
    global Dashboard() {

    }
}
global class DashboardComponent {
    global Boolean autoselectColumnsFromReport;
    global String chartAxisRange;
    global Double chartAxisRangeMax;
    global Double chartAxisRangeMin;
    global List<usf.MetadataService.ChartSummary> chartSummary;
    global String componentChartTheme;
    global String componentType;
    global List<usf.MetadataService.DashboardFilterColumn> dashboardFilterColumns;
    global List<usf.MetadataService.DashboardTableColumn> dashboardTableColumn;
    global String displayUnits;
    global String drillDownUrl;
    global Boolean drillEnabled;
    global Boolean drillToDetailEnabled;
    global Boolean enableHover;
    global Boolean expandOthers;
    global usf.MetadataService.DashboardFlexTableComponentProperties flexComponentProperties;
    global String footer;
    global Double gaugeMax;
    global Double gaugeMin;
    global List<String> groupingColumn;
    global String header;
    global Double indicatorBreakpoint1;
    global Double indicatorBreakpoint2;
    global String indicatorHighColor;
    global String indicatorLowColor;
    global String indicatorMiddleColor;
    global String legendPosition;
    global Integer maxValuesDisplayed;
    global String metricLabel;
    global String page_x;
    global Integer pageHeightInPixels;
    global String report;
    global String scontrol;
    global Integer scontrolHeightInPixels;
    global Boolean showPercentage;
    global Boolean showPicturesOnCharts;
    global Boolean showPicturesOnTables;
    global Boolean showRange;
    global Boolean showTotal;
    global Boolean showValues;
    global String sortBy;
    global String title;
    global Boolean useReportChart;
    global DashboardComponent() {

    }
}
global class DashboardComponentColumn {
    global Double breakPoint1;
    global Double breakPoint2;
    global Integer breakPointOrder;
    global Integer highRangeColor;
    global Integer lowRangeColor;
    global Integer midRangeColor;
    global String reportColumn;
    global Boolean showTotal;
    global String type_x;
    global DashboardComponentColumn() {

    }
}
global class DashboardComponentSection {
    global String columnSize;
    global List<usf.MetadataService.DashboardComponent> components;
    global DashboardComponentSection() {

    }
}
global class DashboardComponentSortInfo {
    global String sortColumn;
    global String sortOrder;
    global DashboardComponentSortInfo() {

    }
}
global class DashboardFilter {
    global List<usf.MetadataService.DashboardFilterOption> dashboardFilterOptions;
    global String name;
    global DashboardFilter() {

    }
}
global class DashboardFilterColumn {
    global String column;
    global DashboardFilterColumn() {

    }
}
global class DashboardFilterOption {
    global String operator;
    global List<String> values;
    global DashboardFilterOption() {

    }
}
global class DashboardFlexTableComponentProperties {
    global List<usf.MetadataService.DashboardComponentColumn> flexTableColumn;
    global usf.MetadataService.DashboardComponentSortInfo flexTableSortInfo;
    global Boolean hideChatterPhotos;
    global DashboardFlexTableComponentProperties() {

    }
}
global class DashboardFolder extends usf.MetadataService.Folder {
    global String accessType;
    global List<usf.MetadataService.FolderShare> folderShares;
    global String fullName;
    global String globalFolderAccess;
    global String name;
    global usf.MetadataService.SharedTo sharedTo;
    global String type;
    global DashboardFolder() {

    }
}
global class DashboardGridComponent {
    global Integer colSpan;
    global Integer columnIndex;
    global usf.MetadataService.DashboardComponent dashboardComponent;
    global Integer rowIndex;
    global Integer rowSpan;
    global DashboardGridComponent() {

    }
}
global class DashboardGridLayout {
    global List<usf.MetadataService.DashboardGridComponent> dashboardGridComponents;
    global Integer numberOfColumns;
    global Integer rowHeight;
    global DashboardGridLayout() {

    }
}
global class DashboardMobileSettings {
    global Boolean enableDashboardIPadApp;
    global DashboardMobileSettings() {

    }
}
global class DashboardTableColumn {
    global String aggregateType;
    global Boolean calculatePercent;
    global String column;
    global Integer decimalPlaces;
    global Boolean showTotal;
    global String sortBy;
    global DashboardTableColumn() {

    }
}
global class DataCategory {
    global List<usf.MetadataService.DataCategory> dataCategory;
    global String label;
    global String name;
    global DataCategory() {

    }
}
global class DataCategoryGroup extends usf.MetadataService.Metadata {
    global Boolean active;
    global usf.MetadataService.DataCategory dataCategory;
    global String description;
    global String fullName;
    global String label;
    global usf.MetadataService.ObjectUsage objectUsage;
    global String type;
    global DataCategoryGroup() {

    }
}
global class DataPipeline {
    global Double apiVersion;
    global String label;
    global String scriptType;
    global DataPipeline() {

    }
}
global class DebuggingHeader_element {
    global List<usf.MetadataService.LogInfo> categories;
    global String debugLevel;
    global DebuggingHeader_element() {

    }
}
global class DebuggingInfo_element {
    global String debugLog;
    global DebuggingInfo_element() {

    }
}
global class DefaultShortcut {
    global String action;
    global Boolean active;
    global String keyCommand;
    global DefaultShortcut() {

    }
}
global class DelegateGroup extends usf.MetadataService.Metadata {
    global List<String> customObjects;
    global String fullName;
    global List<String> groups;
    global String label;
    global Boolean loginAccess;
    global List<String> permissionSets;
    global List<String> profiles;
    global List<String> roles;
    global String type;
    global DelegateGroup() {

    }
}
global class DeleteResult {
    global List<usf.MetadataService.Error> errors;
    global String fullName;
    global Boolean success;
    global DeleteResult() {

    }
}
global class DeployDetails {
    global List<usf.MetadataService.DeployMessage> componentFailures;
    global List<usf.MetadataService.DeployMessage> componentSuccesses;
    global usf.MetadataService.RetrieveResult retrieveResult;
    global usf.MetadataService.RunTestsResult runTestResult;
    global DeployDetails() {

    }
}
global class DeployMessage {
    global Boolean changed;
    global Integer columnNumber;
    global String componentType;
    global Boolean created;
    global Datetime createdDate;
    global Boolean deleted;
    global String fileName;
    global String fullName;
    global String id;
    global Integer lineNumber;
    global String problem;
    global String problemType;
    global Boolean success;
    global DeployMessage() {

    }
}
global class DeployOptions {
    global Boolean allowMissingFiles;
    global Boolean autoUpdatePackage;
    global Boolean checkOnly;
    global Boolean ignoreWarnings;
    global Boolean performRetrieve;
    global Boolean purgeOnDelete;
    global Boolean rollbackOnError;
    global List<String> runTests;
    global Boolean singlePackage;
    global String testLevel;
    global DeployOptions() {

    }
}
global class DeployResult {
    global String canceledBy;
    global String canceledByName;
    global Boolean checkOnly;
    global Datetime completedDate;
    global String createdBy;
    global String createdByName;
    global Datetime createdDate;
    global usf.MetadataService.DeployDetails details;
    global Boolean done;
    global String errorMessage;
    global String errorStatusCode;
    global String id;
    global Boolean ignoreWarnings;
    global Datetime lastModifiedDate;
    global Integer numberComponentErrors;
    global Integer numberComponentsDeployed;
    global Integer numberComponentsTotal;
    global Integer numberTestErrors;
    global Integer numberTestsCompleted;
    global Integer numberTestsTotal;
    global Boolean rollbackOnError;
    global Boolean runTestsEnabled;
    global Datetime startDate;
    global String stateDetail;
    global String status;
    global Boolean success;
    global DeployResult() {

    }
}
global class DescribeMetadataObject {
    global List<String> childXmlNames;
    global String directoryName;
    global Boolean inFolder;
    global Boolean metaFile;
    global String suffix;
    global String xmlName;
    global DescribeMetadataObject() {

    }
}
global class DescribeMetadataResult {
    global List<usf.MetadataService.DescribeMetadataObject> metadataObjects;
    global String organizationNamespace;
    global Boolean partialSaveAllowed;
    global Boolean testRequired;
    global DescribeMetadataResult() {

    }
}
global class DescribeValueTypeResult {
    global Boolean apiCreatable;
    global Boolean apiDeletable;
    global Boolean apiReadable;
    global Boolean apiUpdatable;
    global usf.MetadataService.ValueTypeField parentField;
    global List<usf.MetadataService.ValueTypeField> valueTypeFields;
    global DescribeValueTypeResult() {

    }
}
global class Document extends usf.MetadataService.MetadataWithContent {
    global String content;
    global String description;
    global String fullName;
    global Boolean global_x;
    global Boolean internalUseOnly;
    global String keywords;
    global String name;
    global String type;
    global Document() {

    }
}
global class DocumentFolder extends usf.MetadataService.Folder {
    global String accessType;
    global List<usf.MetadataService.FolderShare> folderShares;
    global String fullName;
    global String globalFolderAccess;
    global String name;
    global usf.MetadataService.SharedTo sharedTo;
    global String type;
    global DocumentFolder() {

    }
}
global class DuplicateRule {
    global String actionOnInsert;
    global String actionOnUpdate;
    global String alertText;
    global String description;
    global usf.MetadataService.DuplicateRuleFilter duplicateRuleFilter;
    global List<usf.MetadataService.DuplicateRuleMatchRule> duplicateRuleMatchRules;
    global Boolean isActive;
    global String masterLabel;
    global List<String> operationsOnInsert;
    global List<String> operationsOnUpdate;
    global String securityOption;
    global Integer sortOrder;
    global DuplicateRule() {

    }
}
global class DuplicateRuleFilter {
    global String booleanFilter;
    global List<usf.MetadataService.DuplicateRuleFilterItem> duplicateRuleFilterItems;
    global DuplicateRuleFilter() {

    }
}
global class DuplicateRuleFilterItem {
    global Integer sortOrder;
    global String table;
    global DuplicateRuleFilterItem() {

    }
}
global class DuplicateRuleMatchRule {
    global String matchingRule;
    global String matchRuleSObjectType;
    global usf.MetadataService.ObjectMapping objectMapping;
    global DuplicateRuleMatchRule() {

    }
}
global class EclairGeoData extends usf.MetadataService.MetadataWithContent {
    global String content;
    global String fullName;
    global List<usf.MetadataService.EclairMap> maps;
    global String masterLabel;
    global String type;
    global EclairGeoData() {

    }
}
global class EclairMap {
    global Double boundingBoxBottom;
    global Double boundingBoxLeft;
    global Double boundingBoxRight;
    global Double boundingBoxTop;
    global String mapLabel;
    global String mapName;
    global String projection;
    global EclairMap() {

    }
}
global class EmailFolder extends usf.MetadataService.Folder {
    global String accessType;
    global List<usf.MetadataService.FolderShare> folderShares;
    global String fullName;
    global String globalFolderAccess;
    global String name;
    global usf.MetadataService.SharedTo sharedTo;
    global String type;
    global EmailFolder() {

    }
}
global class EmailServicesAddress {
    global String authorizedSenders;
    global String developerName;
    global Boolean isActive;
    global String localPart;
    global String runAsUser;
    global EmailServicesAddress() {

    }
}
global class EmailServicesFunction extends usf.MetadataService.Metadata {
    global String apexClass;
    global String attachmentOption;
    global String authenticationFailureAction;
    global String authorizationFailureAction;
    global String authorizedSenders;
    global List<usf.MetadataService.EmailServicesAddress> emailServicesAddresses;
    global String errorRoutingAddress;
    global String fullName;
    global String functionInactiveAction;
    global String functionName;
    global Boolean isActive;
    global Boolean isAuthenticationRequired;
    global Boolean isErrorRoutingEnabled;
    global Boolean isTextAttachmentsAsBinary;
    global Boolean isTlsRequired;
    global String overLimitAction;
    global String type;
    global EmailServicesFunction() {

    }
}
global class EmailTemplate extends usf.MetadataService.MetadataWithContent {
    global Double apiVersion;
    global List<String> attachedDocuments;
    global List<usf.MetadataService.Attachment> attachments;
    global Boolean available;
    global String content;
    global String description;
    global String encodingKey;
    global String fullName;
    global String letterhead;
    global String name;
    global List<usf.MetadataService.PackageVersion> packageVersions;
    global String relatedEntityType;
    global String style;
    global String subject;
    global String textOnly;
    global String type;
    global String type_x;
    global String uiType;
    global EmailTemplate() {

    }
}
global class EmailToCaseRoutingAddress {
    global String addressType;
    global String authorizedSenders;
    global String caseOrigin;
    global String caseOwner;
    global String caseOwnerType;
    global String casePriority;
    global Boolean createTask;
    global String emailAddress;
    global String emailServicesAddress;
    global Boolean isVerified;
    global String routingName;
    global Boolean saveEmailHeaders;
    global String taskStatus;
    global EmailToCaseRoutingAddress() {

    }
}
global class EmailToCaseSettings {
    global Boolean enableE2CSourceTracking;
    global Boolean enableEmailToCase;
    global Boolean enableHtmlEmail;
    global Boolean enableOnDemandEmailToCase;
    global Boolean enableThreadIDInBody;
    global Boolean enableThreadIDInSubject;
    global Boolean notifyOwnerOnNewCaseEmail;
    global String overEmailLimitAction;
    global Boolean preQuoteSignature;
    global List<usf.MetadataService.EmailToCaseRoutingAddress> routingAddresses;
    global String unauthorizedSenderAction;
    global EmailToCaseSettings() {

    }
}
global class EmbeddedServiceBranding extends usf.MetadataService.Metadata {
    global String contrastInvertedColor;
    global String contrastPrimaryColor;
    global String embeddedServiceConfig;
    global String font;
    global String fullName;
    global String masterLabel;
    global String navBarColor;
    global String primaryColor;
    global String secondaryColor;
    global String type;
    global EmbeddedServiceBranding() {

    }
}
global class EmbeddedServiceConfig extends usf.MetadataService.Metadata {
    global String fullName;
    global String masterLabel;
    global String site;
    global String type;
    global EmbeddedServiceConfig() {

    }
}
global class EmbeddedServiceFieldService {
    global String appointmentBookingFlowName;
    global String cancelApptBookingFlowName;
    global String embeddedServiceConfig;
    global Boolean enabled;
    global String fieldServiceConfirmCardImg;
    global String fieldServiceHomeImg;
    global String fieldServiceLogoImg;
    global String masterLabel;
    global String modifyApptBookingFlowName;
    global Boolean shouldShowExistingAppointment;
    global Boolean shouldShowNewAppointment;
    global EmbeddedServiceFieldService() {

    }
}
global class EmbeddedServiceLiveAgent extends usf.MetadataService.Metadata {
    global String avatarImg;
    global String customPrechatComponent;
    global String embeddedServiceConfig;
    global List<usf.MetadataService.EmbeddedServiceQuickAction> embeddedServiceQuickActions;
    global Boolean enabled;
    global String fontSize;
    global String fullName;
    global String headerBackgroundImg;
    global String liveAgentChatUrl;
    global String liveAgentContentUrl;
    global String liveChatButton;
    global String liveChatDeployment;
    global String masterLabel;
    global String prechatBackgroundImg;
    global Boolean prechatEnabled;
    global String prechatJson;
    global String scenario;
    global String smallCompanyLogoImg;
    global String type;
    global String waitingStateBackgroundImg;
    global EmbeddedServiceLiveAgent() {

    }
}
global class EmbeddedServiceQuickAction {
    global String embeddedServiceLiveAgent;
    global Integer order;
    global String quickActionDefinition;
    global EmbeddedServiceQuickAction() {

    }
}
global class EntitlementProcess extends usf.MetadataService.Metadata {
    global Boolean active;
    global String businessHours;
    global String description;
    global String entryStartDateField;
    global String exitCriteriaBooleanFilter;
    global List<usf.MetadataService.FilterItem> exitCriteriaFilterItems;
    global String exitCriteriaFormula;
    global String fullName;
    global Boolean isRecordTypeApplied;
    global Boolean isVersionDefault;
    global List<usf.MetadataService.EntitlementProcessMilestoneItem> milestones;
    global String name;
    global String recordType;
    global String SObjectType;
    global String type;
    global String versionMaster;
    global String versionNotes;
    global Integer versionNumber;
    global EntitlementProcess() {

    }
}
global class EntitlementProcessMilestoneItem {
    global String businessHours;
    global String criteriaBooleanFilter;
    global List<usf.MetadataService.FilterItem> milestoneCriteriaFilterItems;
    global String milestoneCriteriaFormula;
    global String milestoneName;
    global String minutesCustomClass;
    global Integer minutesToComplete;
    global List<usf.MetadataService.WorkflowActionReference> successActions;
    global List<usf.MetadataService.EntitlementProcessMilestoneTimeTrigger> timeTriggers;
    global Boolean useCriteriaStartTime;
    global EntitlementProcessMilestoneItem() {

    }
}
global class EntitlementProcessMilestoneTimeTrigger {
    global List<usf.MetadataService.WorkflowActionReference> actions;
    global Integer timeLength;
    global String workflowTimeTriggerUnit;
    global EntitlementProcessMilestoneTimeTrigger() {

    }
}
global class EntitlementSettings extends usf.MetadataService.Metadata {
    global Boolean assetLookupLimitedToActiveEntitlementsOnAccount;
    global Boolean assetLookupLimitedToActiveEntitlementsOnContact;
    global Boolean assetLookupLimitedToSameAccount;
    global Boolean assetLookupLimitedToSameContact;
    global Boolean enableEntitlements;
    global Boolean enableEntitlementVersioning;
    global Boolean entitlementLookupLimitedToActiveStatus;
    global Boolean entitlementLookupLimitedToSameAccount;
    global Boolean entitlementLookupLimitedToSameAsset;
    global Boolean entitlementLookupLimitedToSameContact;
    global String fullName;
    global String type;
    global EntitlementSettings() {

    }
}
global class EntitlementTemplate extends usf.MetadataService.Metadata {
    global String businessHours;
    global Integer casesPerEntitlement;
    global String entitlementProcess;
    global String fullName;
    global Boolean isPerIncident;
    global Integer term;
    global String type;
    global String type_x;
    global EntitlementTemplate() {

    }
}
global class Error {
    global List<usf.MetadataService.ExtendedErrorDetails> extendedErrorDetails;
    global List<String> fields;
    global String message;
    global String statusCode;
    global Error() {

    }
}
global class EscalationAction {
    global String assignedTo;
    global String assignedToTemplate;
    global String assignedToType;
    global Integer minutesToEscalation;
    global Boolean notifyCaseOwner;
    global List<String> notifyEmail;
    global String notifyTo;
    global String notifyToTemplate;
    global EscalationAction() {

    }
}
global class EscalationRule extends usf.MetadataService.Metadata {
    global Boolean active;
    global String fullName;
    global List<usf.MetadataService.RuleEntry> ruleEntry;
    global String type;
    global EscalationRule() {

    }
}
global class EscalationRules extends usf.MetadataService.Metadata {
    global List<usf.MetadataService.EscalationRule> escalationRule;
    global String fullName;
    global String type;
    global EscalationRules() {

    }
}
global class EventDelivery extends usf.MetadataService.Metadata {
    global List<usf.MetadataService.EventParameterMap> eventParameters;
    global String eventSubscription;
    global String fullName;
    global String referenceData;
    global String type;
    global String type_x;
    global EventDelivery() {

    }
}
global class EventParameterMap {
    global String parameterName;
    global String parameterValue;
    global EventParameterMap() {

    }
}
global class EventSubscription extends usf.MetadataService.Metadata {
    global Boolean active;
    global List<usf.MetadataService.EventParameterMap> eventParameters;
    global String eventType;
    global String fullName;
    global String referenceData;
    global String type;
    global EventSubscription() {

    }
}
global class EventType extends usf.MetadataService.Metadata {
    global String description;
    global List<usf.MetadataService.EventTypeParameter> fields;
    global String fullName;
    global String label;
    global String type;
    global EventType() {

    }
}
global class EventTypeParameter {
    global String defaultValue;
    global String description;
    global String label;
    global Integer maxOccurs;
    global Integer minOccurs;
    global String name;
    global String sObjectType;
    global String type_x;
    global EventTypeParameter() {

    }
}
global class ExtendedErrorDetails {
    global String extendedErrorCode;
    global ExtendedErrorDetails() {

    }
}
global class ExternalDataSource extends usf.MetadataService.Metadata {
    global String authProvider;
    global String certificate;
    global String customConfiguration;
    global String endpoint;
    global String fullName;
    global Boolean isWritable;
    global String label;
    global String oauthRefreshToken;
    global String oauthScope;
    global String oauthToken;
    global String password;
    global String principalType;
    global String protocol;
    global String repository;
    global String type;
    global String type_x;
    global String username;
    global String version;
    global ExternalDataSource() {

    }
}
global class ExternalServiceRegistration extends usf.MetadataService.Metadata {
    global String description;
    global String fullName;
    global String label;
    global String namedCredential;
    global String schema;
    global String schemaType;
    global String schemaUrl;
    global String status;
    global String type;
    global ExternalServiceRegistration() {

    }
}
global class FeedFilterCriterion {
    global String feedItemType;
    global String feedItemVisibility;
    global String relatedSObjectType;
    global FeedFilterCriterion() {

    }
}
global class FeedItemSettings {
    global Integer characterLimit;
    global Boolean collapseThread;
    global String displayFormat;
    global String feedItemType;
    global FeedItemSettings() {

    }
}
global class FeedLayout {
    global Boolean autocollapsePublisher;
    global Boolean compactFeed;
    global String feedFilterPosition;
    global List<usf.MetadataService.FeedLayoutFilter> feedFilters;
    global Boolean fullWidthFeed;
    global Boolean hideSidebar;
    global Boolean highlightExternalFeedItems;
    global List<usf.MetadataService.FeedLayoutComponent> leftComponents;
    global List<usf.MetadataService.FeedLayoutComponent> rightComponents;
    global Boolean useInlineFiltersInConsole;
    global FeedLayout() {

    }
}
global class FeedLayoutComponent {
    global String componentType;
    global Integer height;
    global String page_x;
    global FeedLayoutComponent() {

    }
}
global class FeedLayoutFilter {
    global String feedFilterName;
    global String feedFilterType;
    global String feedItemType;
    global FeedLayoutFilter() {

    }
}
global class FieldMapping {
    global String developerName;
    global List<usf.MetadataService.FieldMappingRow> fieldMappingRows;
    global String masterLabel;
    global String SObjectType;
    global FieldMapping() {

    }
}
global class FieldMappingField {
    global String dataServiceField;
    global String dataServiceObjectName;
    global Integer priority;
    global FieldMappingField() {

    }
}
global class FieldMappingRow {
    global List<usf.MetadataService.FieldMappingField> fieldMappingFields;
    global String fieldName;
    global String mappingOperation;
    global String SObjectType;
    global FieldMappingRow() {

    }
}
global class FieldOverride {
    global String field;
    global String formula;
    global String literalValue;
    global FieldOverride() {

    }
}
global class FieldServiceSettings {
    global Boolean fieldServiceNotificationsOrgPref;
    global Boolean fieldServiceOrgPref;
    global Integer serviceAppointmentsDueDateOffsetOrgValue;
    global List<String> workOrderLineItemSearchFields;
    global List<String> workOrderSearchFields;
    global FieldServiceSettings() {

    }
}
global class FieldSet extends usf.MetadataService.Metadata {
    global List<usf.MetadataService.FieldSetItem> availableFields;
    global String description;
    global List<usf.MetadataService.FieldSetItem> displayedFields;
    global String fullName;
    global String label;
    global String type;
    global FieldSet() {

    }
}
global class FieldSetItem {
    global String field;
    global Boolean isFieldManaged;
    global Boolean isRequired;
    global FieldSetItem() {

    }
}
global class FieldSetTranslation {
    global String label;
    global String name;
    global FieldSetTranslation() {

    }
}
global class FieldValue {
    global String name;
    global String value;
    global FieldValue() {

    }
}
global class FileProperties {
    global String createdById;
    global String createdByName;
    global Datetime createdDate;
    global String fileName;
    global String fullName;
    global String id;
    global String lastModifiedById;
    global String lastModifiedByName;
    global Datetime lastModifiedDate;
    global String manageableState;
    global String namespacePrefix;
    global String type_x;
    global FileProperties() {

    }
}
global class FileTypeDispositionAssignmentBean {
    global String behavior;
    global String fileType;
    global Boolean securityRiskFileType;
    global FileTypeDispositionAssignmentBean() {

    }
}
global class FileUploadAndDownloadSecuritySettings extends usf.MetadataService.Metadata {
    global List<usf.MetadataService.FileTypeDispositionAssignmentBean> dispositions;
    global String fullName;
    global Boolean noHtmlUploadAsAttachment;
    global String type;
    global FileUploadAndDownloadSecuritySettings() {

    }
}
global class FilterItem {
    global String field;
    global String operation;
    global String value;
    global String valueField;
    global FilterItem() {

    }
}
global class FindSimilarOppFilter {
    global List<String> similarOpportunitiesDisplayColumns;
    global List<String> similarOpportunitiesMatchFields;
    global FindSimilarOppFilter() {

    }
}
global class FiscalYearSettings {
    global String fiscalYearNameBasedOn;
    global String startMonth;
    global FiscalYearSettings() {

    }
}
global class FlexiPage extends usf.MetadataService.Metadata {
    global String description;
    global List<usf.MetadataService.FlexiPageRegion> flexiPageRegions;
    global String fullName;
    global String masterLabel;
    global String parentFlexiPage;
    global usf.MetadataService.PlatformActionList platformActionlist;
    global usf.MetadataService.QuickActionList quickActionList;
    global String sobjectType;
    global usf.MetadataService.FlexiPageTemplateInstance template;
    global String type;
    global String type_x;
    global FlexiPage() {

    }
}
global class FlexiPageRegion {
    global String appendable;
    global List<usf.MetadataService.ComponentInstance> componentInstances;
    global String mode;
    global String name;
    global String prependable;
    global String replaceable;
    global String type_x;
    global FlexiPageRegion() {

    }
}
global class FlexiPageTemplateInstance {
    global String name;
    global List<usf.MetadataService.ComponentInstanceProperty> properties;
    global FlexiPageTemplateInstance() {

    }
}
global class Flow extends usf.MetadataService.Metadata {
    global List<usf.MetadataService.FlowActionCall> actionCalls;
    global List<usf.MetadataService.FlowApexPluginCall> apexPluginCalls;
    global List<usf.MetadataService.FlowAssignment> assignments;
    global List<usf.MetadataService.FlowChoice> choices;
    global List<usf.MetadataService.FlowConstant> constants;
    global List<usf.MetadataService.FlowDecision> decisions;
    global String description;
    global List<usf.MetadataService.FlowDynamicChoiceSet> dynamicChoiceSets;
    global List<usf.MetadataService.FlowFormula> formulas;
    global String fullName;
    global String interviewLabel;
    global String label;
    global List<usf.MetadataService.FlowLoop> loops;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global String processType;
    global List<usf.MetadataService.FlowRecordCreate> recordCreates;
    global List<usf.MetadataService.FlowRecordDelete> recordDeletes;
    global List<usf.MetadataService.FlowRecordLookup> recordLookups;
    global List<usf.MetadataService.FlowRecordUpdate> recordUpdates;
    global List<usf.MetadataService.FlowScreen> screens;
    global List<usf.MetadataService.FlowStage> stages;
    global String startElementReference;
    global List<usf.MetadataService.FlowStep> steps;
    global List<usf.MetadataService.FlowSubflow> subflows;
    global List<usf.MetadataService.FlowTextTemplate> textTemplates;
    global String type;
    global List<usf.MetadataService.FlowVariable> variables;
    global List<usf.MetadataService.FlowWait> waits;
    global Flow() {

    }
}
global class FlowActionCall extends usf.MetadataService.FlowNode {
    global String actionName;
    global String actionType;
    global usf.MetadataService.FlowConnector connector;
    global String description;
    global usf.MetadataService.FlowConnector faultConnector;
    global List<usf.MetadataService.FlowActionCallInputParameter> inputParameters;
    global String label;
    global Integer locationX;
    global Integer locationY;
    global String name;
    global List<usf.MetadataService.FlowActionCallOutputParameter> outputParameters;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global String type;
    global FlowActionCall() {

    }
}
global class FlowActionCallInputParameter extends usf.MetadataService.FlowBaseElement {
    global String name;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global String type;
    global usf.MetadataService.FlowElementReferenceOrValue value;
    global FlowActionCallInputParameter() {

    }
}
global class FlowActionCallOutputParameter extends usf.MetadataService.FlowBaseElement {
    global String assignToReference;
    global String name;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global String type;
    global FlowActionCallOutputParameter() {

    }
}
global class FlowApexPluginCall extends usf.MetadataService.FlowNode {
    global String apexClass;
    global usf.MetadataService.FlowConnector connector;
    global String description;
    global usf.MetadataService.FlowConnector faultConnector;
    global List<usf.MetadataService.FlowApexPluginCallInputParameter> inputParameters;
    global String label;
    global Integer locationX;
    global Integer locationY;
    global String name;
    global List<usf.MetadataService.FlowApexPluginCallOutputParameter> outputParameters;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global String type;
    global FlowApexPluginCall() {

    }
}
global class FlowApexPluginCallInputParameter extends usf.MetadataService.FlowBaseElement {
    global String name;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global String type;
    global usf.MetadataService.FlowElementReferenceOrValue value;
    global FlowApexPluginCallInputParameter() {

    }
}
global class FlowApexPluginCallOutputParameter extends usf.MetadataService.FlowBaseElement {
    global String assignToReference;
    global String name;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global String type;
    global FlowApexPluginCallOutputParameter() {

    }
}
global class FlowAssignment extends usf.MetadataService.FlowNode {
    global List<usf.MetadataService.FlowAssignmentItem> assignmentItems;
    global usf.MetadataService.FlowConnector connector;
    global String description;
    global String label;
    global Integer locationX;
    global Integer locationY;
    global String name;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global String type;
    global FlowAssignment() {

    }
}
global class FlowAssignmentItem extends usf.MetadataService.FlowBaseElement {
    global String assignToReference;
    global String operator;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global String type;
    global usf.MetadataService.FlowElementReferenceOrValue value;
    global FlowAssignmentItem() {

    }
}
global virtual class FlowBaseElement {
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global FlowBaseElement() {

    }
}
global class FlowCategory {
    global String description;
    global List<usf.MetadataService.FlowCategoryItems> flowCategoryItems;
    global String masterLabel;
    global FlowCategory() {

    }
}
global class FlowCategoryItems {
    global String flow;
    global FlowCategoryItems() {

    }
}
global class FlowChoice extends usf.MetadataService.FlowElement {
    global String choiceText;
    global String dataType;
    global String description;
    global String name;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global String type;
    global usf.MetadataService.FlowChoiceUserInput userInput;
    global usf.MetadataService.FlowElementReferenceOrValue value;
    global FlowChoice() {

    }
}
global class FlowChoiceTranslation {
    global String choiceText;
    global String name;
    global usf.MetadataService.FlowChoiceUserInputTranslation userInput;
    global FlowChoiceTranslation() {

    }
}
global class FlowChoiceUserInput extends usf.MetadataService.FlowBaseElement {
    global Boolean isRequired;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global String promptText;
    global String type;
    global usf.MetadataService.FlowInputValidationRule validationRule;
    global FlowChoiceUserInput() {

    }
}
global class FlowChoiceUserInputTranslation {
    global String promptText;
    global usf.MetadataService.FlowInputValidationRuleTranslation validationRule;
    global FlowChoiceUserInputTranslation() {

    }
}
global class FlowCondition extends usf.MetadataService.FlowBaseElement {
    global String leftValueReference;
    global String operator;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global usf.MetadataService.FlowElementReferenceOrValue rightValue;
    global String type;
    global FlowCondition() {

    }
}
global class FlowConnector extends usf.MetadataService.FlowBaseElement {
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global String targetReference;
    global String type;
    global FlowConnector() {

    }
}
global class FlowConstant extends usf.MetadataService.FlowElement {
    global String dataType;
    global String description;
    global String name;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global String type;
    global usf.MetadataService.FlowElementReferenceOrValue value;
    global FlowConstant() {

    }
}
global class FlowDecision extends usf.MetadataService.FlowNode {
    global usf.MetadataService.FlowConnector defaultConnector;
    global String defaultConnectorLabel;
    global String description;
    global String label;
    global Integer locationX;
    global Integer locationY;
    global String name;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global List<usf.MetadataService.FlowRule> rules;
    global String type;
    global FlowDecision() {

    }
}
global class FlowDefinition {
    global Integer activeVersionNumber;
    global String description;
    global String masterLabel;
    global FlowDefinition() {

    }
}
global class FlowDefinitionTranslation {
    global List<usf.MetadataService.FlowTranslation> flows;
    global String fullName;
    global String label;
    global FlowDefinitionTranslation() {

    }
}
global class FlowDynamicChoiceSet extends usf.MetadataService.FlowElement {
    global String dataType;
    global String description;
    global String displayField;
    global List<usf.MetadataService.FlowRecordFilter> filters;
    global Integer limit_x;
    global String name;
    global String object_x;
    global List<usf.MetadataService.FlowOutputFieldAssignment> outputAssignments;
    global String picklistField;
    global String picklistObject;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global String sortField;
    global String sortOrder;
    global String type;
    global String valueField;
    global FlowDynamicChoiceSet() {

    }
}
global virtual class FlowElement extends usf.MetadataService.FlowBaseElement {
    global String description;
    global String name;
    global FlowElement() {

    }
}
global class FlowElementReferenceOrValue {
    global Boolean booleanValue;
    global Datetime dateTimeValue;
    global Date dateValue;
    global String elementReference;
    global Double numberValue;
    global String stringValue;
    global FlowElementReferenceOrValue() {

    }
}
global class FlowFormula extends usf.MetadataService.FlowElement {
    global String dataType;
    global String description;
    global String expression;
    global String name;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global Integer scale;
    global String type;
    global FlowFormula() {

    }
}
global class FlowInputFieldAssignment extends usf.MetadataService.FlowBaseElement {
    global String field;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global String type;
    global usf.MetadataService.FlowElementReferenceOrValue value;
    global FlowInputFieldAssignment() {

    }
}
global class FlowInputValidationRule {
    global String errorMessage;
    global String formulaExpression;
    global FlowInputValidationRule() {

    }
}
global class FlowInputValidationRuleTranslation {
    global String errorMessage;
    global FlowInputValidationRuleTranslation() {

    }
}
global class FlowLoop extends usf.MetadataService.FlowNode {
    global String assignNextValueToReference;
    global String collectionReference;
    global String description;
    global String iterationOrder;
    global String label;
    global Integer locationX;
    global Integer locationY;
    global String name;
    global usf.MetadataService.FlowConnector nextValueConnector;
    global usf.MetadataService.FlowConnector noMoreValuesConnector;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global String type;
    global FlowLoop() {

    }
}
global class FlowMetadataValue {
    global String name;
    global usf.MetadataService.FlowElementReferenceOrValue value;
    global FlowMetadataValue() {

    }
}
global virtual class FlowNode extends usf.MetadataService.FlowElement {
    global String label;
    global Integer locationX;
    global Integer locationY;
    global FlowNode() {

    }
}
global class FlowOutputFieldAssignment extends usf.MetadataService.FlowBaseElement {
    global String assignToReference;
    global String field;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global String type;
    global FlowOutputFieldAssignment() {

    }
}
global class FlowRecordCreate extends usf.MetadataService.FlowNode {
    global String assignRecordIdToReference;
    global usf.MetadataService.FlowConnector connector;
    global String description;
    global usf.MetadataService.FlowConnector faultConnector;
    global List<usf.MetadataService.FlowInputFieldAssignment> inputAssignments;
    global String inputReference;
    global String label;
    global Integer locationX;
    global Integer locationY;
    global String name;
    global String object_x;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global String type;
    global FlowRecordCreate() {

    }
}
global class FlowRecordDelete extends usf.MetadataService.FlowNode {
    global usf.MetadataService.FlowConnector connector;
    global String description;
    global usf.MetadataService.FlowConnector faultConnector;
    global List<usf.MetadataService.FlowRecordFilter> filters;
    global String inputReference;
    global String label;
    global Integer locationX;
    global Integer locationY;
    global String name;
    global String object_x;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global String type;
    global FlowRecordDelete() {

    }
}
global class FlowRecordFilter extends usf.MetadataService.FlowBaseElement {
    global String field;
    global String operator;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global String type;
    global usf.MetadataService.FlowElementReferenceOrValue value;
    global FlowRecordFilter() {

    }
}
global class FlowRecordLookup extends usf.MetadataService.FlowNode {
    global Boolean assignNullValuesIfNoRecordsFound;
    global usf.MetadataService.FlowConnector connector;
    global String description;
    global usf.MetadataService.FlowConnector faultConnector;
    global List<usf.MetadataService.FlowRecordFilter> filters;
    global String label;
    global Integer locationX;
    global Integer locationY;
    global String name;
    global String object_x;
    global List<usf.MetadataService.FlowOutputFieldAssignment> outputAssignments;
    global String outputReference;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global List<String> queriedFields;
    global String sortField;
    global String sortOrder;
    global String type;
    global FlowRecordLookup() {

    }
}
global class FlowRecordUpdate extends usf.MetadataService.FlowNode {
    global usf.MetadataService.FlowConnector connector;
    global String description;
    global usf.MetadataService.FlowConnector faultConnector;
    global List<usf.MetadataService.FlowRecordFilter> filters;
    global List<usf.MetadataService.FlowInputFieldAssignment> inputAssignments;
    global String inputReference;
    global String label;
    global Integer locationX;
    global Integer locationY;
    global String name;
    global String object_x;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global String type;
    global FlowRecordUpdate() {

    }
}
global class FlowRule extends usf.MetadataService.FlowElement {
    global String conditionLogic;
    global List<usf.MetadataService.FlowCondition> conditions;
    global usf.MetadataService.FlowConnector connector;
    global String description;
    global String label;
    global String name;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global String type;
    global FlowRule() {

    }
}
global class FlowScreen extends usf.MetadataService.FlowNode {
    global Boolean allowBack;
    global Boolean allowFinish;
    global Boolean allowPause;
    global usf.MetadataService.FlowConnector connector;
    global String description;
    global List<usf.MetadataService.FlowScreenField> fields;
    global String helpText;
    global String label;
    global Integer locationX;
    global Integer locationY;
    global String name;
    global String pausedText;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global List<usf.MetadataService.FlowScreenRule> rules;
    global Boolean showFooter;
    global Boolean showHeader;
    global String type;
    global FlowScreen() {

    }
}
global class FlowScreenField extends usf.MetadataService.FlowElement {
    global List<String> choiceReferences;
    global String dataType;
    global String defaultSelectedChoiceReference;
    global usf.MetadataService.FlowElementReferenceOrValue defaultValue;
    global String description;
    global String extensionName;
    global String fieldText;
    global String fieldType;
    global String helpText;
    global List<usf.MetadataService.FlowScreenFieldInputParameter> inputParameters;
    global Boolean isRequired;
    global Boolean isVisible;
    global String name;
    global List<usf.MetadataService.FlowScreenFieldOutputParameter> outputParameters;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global Integer scale;
    global String type;
    global usf.MetadataService.FlowInputValidationRule validationRule;
    global FlowScreenField() {

    }
}
global class FlowScreenFieldInputParameter {
    global String name;
    global usf.MetadataService.FlowElementReferenceOrValue value;
    global FlowScreenFieldInputParameter() {

    }
}
global class FlowScreenFieldOutputParameter {
    global String assignToReference;
    global String name;
    global FlowScreenFieldOutputParameter() {

    }
}
global class FlowScreenFieldTranslation {
    global String fieldText;
    global String helpText;
    global String name;
    global usf.MetadataService.FlowInputValidationRuleTranslation validationRule;
    global FlowScreenFieldTranslation() {

    }
}
global class FlowScreenRule {
    global String conditionLogic;
    global List<usf.MetadataService.FlowCondition> conditions;
    global String label;
    global List<usf.MetadataService.FlowScreenRuleAction> ruleActions;
    global FlowScreenRule() {

    }
}
global class FlowScreenRuleAction {
    global String attribute;
    global String fieldReference;
    global usf.MetadataService.FlowElementReferenceOrValue value;
    global FlowScreenRuleAction() {

    }
}
global class FlowScreenTranslation {
    global List<usf.MetadataService.FlowScreenFieldTranslation> fields;
    global String helpText;
    global String name;
    global String pausedText;
    global FlowScreenTranslation() {

    }
}
global class FlowStage {
    global Boolean isActive;
    global String label;
    global Integer stageOrder;
    global FlowStage() {

    }
}
global class FlowStep extends usf.MetadataService.FlowNode {
    global List<usf.MetadataService.FlowConnector> connectors;
    global String description;
    global String label;
    global Integer locationX;
    global Integer locationY;
    global String name;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global String type;
    global FlowStep() {

    }
}
global class FlowSubflow extends usf.MetadataService.FlowNode {
    global usf.MetadataService.FlowConnector connector;
    global String description;
    global String flowName;
    global List<usf.MetadataService.FlowSubflowInputAssignment> inputAssignments;
    global String label;
    global Integer locationX;
    global Integer locationY;
    global String name;
    global List<usf.MetadataService.FlowSubflowOutputAssignment> outputAssignments;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global String type;
    global FlowSubflow() {

    }
}
global class FlowSubflowInputAssignment extends usf.MetadataService.FlowBaseElement {
    global String name;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global String type;
    global usf.MetadataService.FlowElementReferenceOrValue value;
    global FlowSubflowInputAssignment() {

    }
}
global class FlowSubflowOutputAssignment extends usf.MetadataService.FlowBaseElement {
    global String assignToReference;
    global String name;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global String type;
    global FlowSubflowOutputAssignment() {

    }
}
global class FlowTextTemplate extends usf.MetadataService.FlowElement {
    global String description;
    global String name;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global String text;
    global String type;
    global FlowTextTemplate() {

    }
}
global class FlowTranslation {
    global List<usf.MetadataService.FlowChoiceTranslation> choices;
    global String fullName;
    global String label;
    global List<usf.MetadataService.FlowScreenTranslation> screens;
    global FlowTranslation() {

    }
}
global class FlowVariable extends usf.MetadataService.FlowElement {
    global String dataType;
    global String description;
    global Boolean isCollection;
    global Boolean isInput;
    global Boolean isOutput;
    global String name;
    global String objectType;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global Integer scale;
    global String type;
    global usf.MetadataService.FlowElementReferenceOrValue value;
    global FlowVariable() {

    }
}
global class FlowWait extends usf.MetadataService.FlowNode {
    global usf.MetadataService.FlowConnector defaultConnector;
    global String defaultConnectorLabel;
    global String description;
    global usf.MetadataService.FlowConnector faultConnector;
    global String label;
    global Integer locationX;
    global Integer locationY;
    global String name;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global String type;
    global List<usf.MetadataService.FlowWaitEvent> waitEvents;
    global FlowWait() {

    }
}
global class FlowWaitEvent extends usf.MetadataService.FlowElement {
    global String conditionLogic;
    global List<usf.MetadataService.FlowCondition> conditions;
    global usf.MetadataService.FlowConnector connector;
    global String description;
    global String eventType;
    global List<usf.MetadataService.FlowWaitEventInputParameter> inputParameters;
    global String label;
    global String name;
    global List<usf.MetadataService.FlowWaitEventOutputParameter> outputParameters;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global String type;
    global FlowWaitEvent() {

    }
}
global class FlowWaitEventInputParameter extends usf.MetadataService.FlowBaseElement {
    global String name;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global String type;
    global usf.MetadataService.FlowElementReferenceOrValue value;
    global FlowWaitEventInputParameter() {

    }
}
global class FlowWaitEventOutputParameter extends usf.MetadataService.FlowBaseElement {
    global String assignToReference;
    global String name;
    global List<usf.MetadataService.FlowMetadataValue> processMetadataValues;
    global String type;
    global FlowWaitEventOutputParameter() {

    }
}
global virtual class Folder extends usf.MetadataService.Metadata {
    global String accessType;
    global List<usf.MetadataService.FolderShare> folderShares;
    global String globalFolderAccess;
    global String name;
    global usf.MetadataService.SharedTo sharedTo;
    global Folder() {

    }
}
global class FolderShare {
    global String accessLevel;
    global String sharedTo;
    global String sharedToType;
    global FolderShare() {

    }
}
global class ForecastRangeSettings {
    global Integer beginning;
    global Integer displaying;
    global String periodType;
    global ForecastRangeSettings() {

    }
}
global class ForecastingCategoryMapping {
    global String forecastingItemCategoryApiName;
    global List<usf.MetadataService.WeightedSourceCategory> weightedSourceCategories;
    global ForecastingCategoryMapping() {

    }
}
global class ForecastingDisplayedFamilySettings {
    global String productFamily;
    global ForecastingDisplayedFamilySettings() {

    }
}
global class ForecastingSettings extends usf.MetadataService.Metadata {
    global String displayCurrency;
    global Boolean enableForecasts;
    global List<usf.MetadataService.ForecastingCategoryMapping> forecastingCategoryMappings;
    global List<usf.MetadataService.ForecastingDisplayedFamilySettings> forecastingDisplayedFamilySettings;
    global List<usf.MetadataService.ForecastingTypeSettings> forecastingTypeSettings;
    global String fullName;
    global String type;
    global ForecastingSettings() {

    }
}
global class ForecastingTypeSettings {
    global Boolean active;
    global usf.MetadataService.AdjustmentsSettings adjustmentsSettings;
    global List<String> displayedCategoryApiNames;
    global List<String> forecastedCategoryApiNames;
    global String forecastingDateType;
    global usf.MetadataService.ForecastRangeSettings forecastRangeSettings;
    global Boolean hasProductFamily;
    global Boolean isAmount;
    global Boolean isAvailable;
    global Boolean isQuantity;
    global List<String> managerAdjustableCategoryApiNames;
    global String masterLabel;
    global String name;
    global List<usf.MetadataService.OpportunityListFieldsLabelMapping> opportunityListFieldsLabelMappings;
    global usf.MetadataService.OpportunityListFieldsSelectedSettings opportunityListFieldsSelectedSettings;
    global usf.MetadataService.OpportunityListFieldsUnselectedSettings opportunityListFieldsUnselectedSettings;
    global String opportunitySplitName;
    global List<String> ownerAdjustableCategoryApiNames;
    global usf.MetadataService.QuotasSettings quotasSettings;
    global String territory2ModelName;
    global ForecastingTypeSettings() {

    }
}
global virtual class GlobalPicklistValue extends usf.MetadataService.Metadata {
    global String color;
    global Boolean default_x;
    global String description;
    global Boolean isActive;
    global GlobalPicklistValue() {

    }
}
global class GlobalQuickActionTranslation {
    global String label;
    global String name;
    global GlobalQuickActionTranslation() {

    }
}
global class GlobalValueSet extends usf.MetadataService.Metadata {
    global List<usf.MetadataService.CustomValue> customValue;
    global String description;
    global String fullName;
    global String masterLabel;
    global Boolean sorted;
    global String type;
    global GlobalValueSet() {

    }
}
global class GlobalValueSetTranslation {
    global List<usf.MetadataService.ValueTranslation> valueTranslation;
    global GlobalValueSetTranslation() {

    }
}
global class Group_x extends usf.MetadataService.Metadata {
    global Boolean doesIncludeBosses;
    global String fullName;
    global String name;
    global String type;
    global Group_x() {

    }
}
global class HistoryRetentionPolicy {
    global Integer archiveAfterMonths;
    global Integer archiveRetentionYears;
    global String description;
    global Integer gracePeriodDays;
    global HistoryRetentionPolicy() {

    }
}
global class Holiday {
    global Date activityDate;
    global List<String> businessHours;
    global String description;
    global Datetime endTime;
    global Boolean isRecurring;
    global String name;
    global Integer recurrenceDayOfMonth;
    global List<String> recurrenceDayOfWeek;
    global Integer recurrenceDayOfWeekMask;
    global Date recurrenceEndDate;
    global String recurrenceInstance;
    global Integer recurrenceInterval;
    global String recurrenceMonthOfYear;
    global Date recurrenceStartDate;
    global String recurrenceType;
    global Datetime startTime;
    global Holiday() {

    }
}
global class HomePageComponent extends usf.MetadataService.Metadata {
    global String body;
    global String fullName;
    global Integer height;
    global List<String> links;
    global String page_x;
    global String pageComponentType;
    global Boolean showLabel;
    global Boolean showScrollbars;
    global String type;
    global String width;
    global HomePageComponent() {

    }
}
global class HomePageLayout extends usf.MetadataService.Metadata {
    global String fullName;
    global List<String> narrowComponents;
    global String type;
    global List<String> wideComponents;
    global HomePageLayout() {

    }
}
global interface IReadResponseElement {
    usf.MetadataService.IReadResult getResult();
}
global interface IReadResult {
    List<usf.MetadataService.Metadata> getRecords();
}
global class IdeaReputationLevel {
    global String name;
    global Integer value;
    global IdeaReputationLevel() {

    }
}
global class IdeasSettings extends usf.MetadataService.Metadata {
    global Boolean enableChatterProfile;
    global Boolean enableIdeas;
    global Boolean enableIdeasReputation;
    global Boolean enableIdeaThemes;
    global String fullName;
    global Double halfLife;
    global String ideasProfilePage;
    global String type;
    global IdeasSettings() {

    }
}
global class Index {
    global List<usf.MetadataService.IndexField> fields;
    global String label;
    global Index() {

    }
}
global class IndexField {
    global String name;
    global String sortDirection;
    global IndexField() {

    }
}
global class InsightType {
    global String defaultTrendType;
    global String description;
    global Boolean isProtected;
    global String masterLabel;
    global String parentType;
    global String title;
    global InsightType() {

    }
}
global class InstalledPackage extends usf.MetadataService.Metadata {
    global String fullName;
    global String password;
    global String type;
    global String versionNumber;
    global InstalledPackage() {

    }
}
global class IntegrationHubSettings {
    global String canonicalName;
    global String canonicalNameBindingChar;
    global String description;
    global Boolean isEnabled;
    global Boolean isProtected;
    global String masterLabel;
    global String setupData;
    global String setupDefinition;
    global String setupNamespace;
    global String setupSimpleName;
    global String uUID;
    global String version;
    global Integer versionBuild;
    global Integer versionMajor;
    global Integer versionMinor;
    global IntegrationHubSettings() {

    }
}
global class IntegrationHubSettingsType {
    global String canonicalName;
    global String canonicalNameBindingChar;
    global String description;
    global Boolean isEnabled;
    global Boolean isProtected;
    global String masterLabel;
    global String setupNamespace;
    global String setupSimpleName;
    global String uUID;
    global String version;
    global Integer versionBuild;
    global Integer versionMajor;
    global Integer versionMinor;
    global IntegrationHubSettingsType() {

    }
}
global class IpRange {
    global String description;
    global String end_x;
    global String start;
    global IpRange() {

    }
}
global class KeyboardShortcuts {
    global List<usf.MetadataService.CustomShortcut> customShortcuts;
    global List<usf.MetadataService.DefaultShortcut> defaultShortcuts;
    global KeyboardShortcuts() {

    }
}
global class Keyword {
    global String keyword;
    global Keyword() {

    }
}
global class KeywordList {
    global String description;
    global List<usf.MetadataService.Keyword> keywords;
    global String masterLabel;
    global KeywordList() {

    }
}
global class KnowledgeAnswerSettings {
    global String assignTo;
    global String defaultArticleType;
    global Boolean enableArticleCreation;
    global KnowledgeAnswerSettings() {

    }
}
global class KnowledgeCaseField {
    global String name;
    global KnowledgeCaseField() {

    }
}
global class KnowledgeCaseFieldsSettings {
    global List<usf.MetadataService.KnowledgeCaseField> field;
    global KnowledgeCaseFieldsSettings() {

    }
}
global class KnowledgeCaseSettings {
    global usf.MetadataService.KnowledgeCommunitiesSettings articleglobalSharingCommunities;
    global usf.MetadataService.KnowledgeSitesSettings articleglobalSharingSites;
    global usf.MetadataService.KnowledgeSitesSettings articleglobalSharingSitesChatterAnswers;
    global String articlePDFCreationProfile;
    global String assignTo;
    global String customizationClass;
    global String defaultContributionArticleType;
    global String editor;
    global Boolean enableArticleCreation;
    global Boolean enableArticleglobalSharingSites;
    global Boolean enableCaseDataCategoryMapping;
    global Boolean useProfileForPDFCreation;
    global KnowledgeCaseSettings() {

    }
}
global class KnowledgeCommunitiesSettings {
    global List<String> community;
    global KnowledgeCommunitiesSettings() {

    }
}
global class KnowledgeLanguage {
    global Boolean active;
    global String defaultAssignee;
    global String defaultAssigneeType;
    global String defaultReviewer;
    global String defaultReviewerType;
    global String name;
    global KnowledgeLanguage() {

    }
}
global class KnowledgeLanguageSettings {
    global List<usf.MetadataService.KnowledgeLanguage> language;
    global KnowledgeLanguageSettings() {

    }
}
global class KnowledgeSettings extends usf.MetadataService.Metadata {
    global usf.MetadataService.KnowledgeAnswerSettings answers;
    global usf.MetadataService.KnowledgeCaseSettings cases;
    global String defaultLanguage;
    global Boolean enableChatterQuestionKBDeflection;
    global Boolean enableCreateEditOnArticlesTab;
    global Boolean enableExternalMediaContent;
    global Boolean enableKnowledge;
    global Boolean enableLightningKnowledge;
    global String fullName;
    global usf.MetadataService.KnowledgeLanguageSettings languages;
    global Boolean showArticleSummariesCustomerPortal;
    global Boolean showArticleSummariesInternalApp;
    global Boolean showArticleSummariesPartnerPortal;
    global Boolean showValidationStatusField;
    global usf.MetadataService.KnowledgeSuggestedArticlesSettings suggestedArticles;
    global String type;
    global KnowledgeSettings() {

    }
}
global class KnowledgeSitesSettings {
    global List<String> site;
    global KnowledgeSitesSettings() {

    }
}
global class KnowledgeSuggestedArticlesSettings {
    global usf.MetadataService.KnowledgeCaseFieldsSettings caseFields;
    global Boolean useSuggestedArticlesForCase;
    global usf.MetadataService.KnowledgeWorkOrderFieldsSettings workOrderFields;
    global usf.MetadataService.KnowledgeWorkOrderLineItemFieldsSettings workOrderLineItemFields;
    global KnowledgeSuggestedArticlesSettings() {

    }
}
global class KnowledgeWorkOrderField {
    global String name;
    global KnowledgeWorkOrderField() {

    }
}
global class KnowledgeWorkOrderFieldsSettings {
    global List<usf.MetadataService.KnowledgeWorkOrderField> field;
    global KnowledgeWorkOrderFieldsSettings() {

    }
}
global class KnowledgeWorkOrderLineItemField {
    global String name;
    global KnowledgeWorkOrderLineItemField() {

    }
}
global class KnowledgeWorkOrderLineItemFieldsSettings {
    global List<usf.MetadataService.KnowledgeWorkOrderLineItemField> field;
    global KnowledgeWorkOrderLineItemFieldsSettings() {

    }
}
global class Layout extends usf.MetadataService.Metadata {
    global List<String> customButtons;
    global usf.MetadataService.CustomConsoleComponents customConsoleComponents;
    global Boolean emailDefault;
    global List<String> excludeButtons;
    global usf.MetadataService.FeedLayout feedLayout;
    global String fullName;
    global List<String> headers;
    global List<usf.MetadataService.LayoutSection> layoutSections;
    global usf.MetadataService.MiniLayout miniLayout;
    global List<String> multilineLayoutFields;
    global usf.MetadataService.PlatformActionList platformActionList;
    global usf.MetadataService.QuickActionList quickActionList;
    global usf.MetadataService.RelatedContent relatedContent;
    global List<usf.MetadataService.RelatedListItem> relatedLists;
    global List<String> relatedObjects;
    global Boolean runAssignmentRulesDefault;
    global Boolean showEmailCheckbox;
    global Boolean showHighlightsPanel;
    global Boolean showInteractionLogPanel;
    global Boolean showKnowledgeComponent;
    global Boolean showRunAssignmentRulesCheckbox;
    global Boolean showSolutionSection;
    global Boolean showSubmitAndAttachButton;
    global usf.MetadataService.SummaryLayout summaryLayout;
    global String type;
    global Layout() {

    }
}
global class LayoutColumn {
    global List<usf.MetadataService.LayoutItem> layoutItems;
    global String reserved;
    global LayoutColumn() {

    }
}
global class LayoutItem {
    global usf.MetadataService.AnalyticsCloudComponentLayoutItem analyticsCloudComponent;
    global String behavior;
    global String canvas;
    global String component;
    global String customLink;
    global Boolean emptySpace;
    global String field;
    global Integer height;
    global String page_x;
    global usf.MetadataService.ReportChartComponentLayoutItem reportChartComponent;
    global String scontrol;
    global Boolean showLabel;
    global Boolean showScrollbars;
    global String width;
    global LayoutItem() {

    }
}
global class LayoutSection {
    global Boolean customLabel;
    global Boolean detailHeading;
    global Boolean editHeading;
    global String label;
    global List<usf.MetadataService.LayoutColumn> layoutColumns;
    global String style;
    global LayoutSection() {

    }
}
global class LayoutSectionTranslation {
    global String label;
    global String section;
    global LayoutSectionTranslation() {

    }
}
global class LayoutTranslation {
    global String layout;
    global String layoutType;
    global List<usf.MetadataService.LayoutSectionTranslation> sections;
    global LayoutTranslation() {

    }
}
global class LeadConvertSettings extends usf.MetadataService.Metadata {
    global Boolean allowOwnerChange;
    global String fullName;
    global List<usf.MetadataService.ObjectMapping> objectMapping;
    global String opportunityCreationOptions;
    global String type;
    global LeadConvertSettings() {

    }
}
global class Letterhead extends usf.MetadataService.Metadata {
    global Boolean available;
    global String backgroundColor;
    global String bodyColor;
    global usf.MetadataService.LetterheadLine bottomLine;
    global String description;
    global usf.MetadataService.LetterheadHeaderFooter footer;
    global String fullName;
    global usf.MetadataService.LetterheadHeaderFooter header;
    global usf.MetadataService.LetterheadLine middleLine;
    global String name;
    global usf.MetadataService.LetterheadLine topLine;
    global String type;
    global Letterhead() {

    }
}
global class LetterheadHeaderFooter {
    global String backgroundColor;
    global Integer height;
    global String horizontalAlignment;
    global String logo;
    global String verticalAlignment;
    global LetterheadHeaderFooter() {

    }
}
global class LetterheadLine {
    global String color;
    global Integer height;
    global LetterheadLine() {

    }
}
global class LicenseDefinition extends usf.MetadataService.Metadata {
    global String aggregationGroup;
    global String description;
    global String fullName;
    global Boolean isPublished;
    global String label;
    global List<usf.MetadataService.LicensedCustomPermissions> licensedCustomPermissions;
    global String licensingAuthority;
    global String licensingAuthorityProvider;
    global Integer minPlatformVersion;
    global String origin;
    global Integer revision;
    global Integer trialLicenseDuration;
    global Integer trialLicenseQuantity;
    global String type;
    global LicenseDefinition() {

    }
}
global class LicensedCustomPermissions {
    global String customPermission;
    global String licenseDefinition;
    global LicensedCustomPermissions() {

    }
}
global class LightningBolt {
    global String category;
    global List<usf.MetadataService.LightningBoltFeatures> lightningBoltFeatures;
    global List<usf.MetadataService.LightningBoltImages> lightningBoltImages;
    global List<usf.MetadataService.LightningBoltItems> lightningBoltItems;
    global String masterLabel;
    global String publisher;
    global String summary;
    global LightningBolt() {

    }
}
global class LightningBoltFeatures {
    global String description;
    global Integer order;
    global String title;
    global LightningBoltFeatures() {

    }
}
global class LightningBoltImages {
    global String image;
    global Integer order;
    global LightningBoltImages() {

    }
}
global class LightningBoltItems {
    global String name;
    global String type_x;
    global LightningBoltItems() {

    }
}
global class LightningComponentBundle {
    global Double apiVersion;
    global Boolean isExposed;
    global LightningComponentBundle() {

    }
}
global class LightningExperienceTheme {
    global String defaultBrandingSet;
    global String description;
    global String masterLabel;
    global Boolean shouldOverrideLoadingImage;
    global LightningExperienceTheme() {

    }
}
global class ListMetadataQuery {
    global String folder;
    global String type_x;
    global ListMetadataQuery() {

    }
}
global class ListPlacement {
    global Integer height;
    global String location;
    global String units;
    global Integer width;
    global ListPlacement() {

    }
}
global class ListView extends usf.MetadataService.Metadata {
    global String booleanFilter;
    global List<String> columns;
    global String division;
    global List<usf.MetadataService.ListViewFilter> filters;
    global String filterScope;
    global String fullName;
    global String label;
    global String language;
    global String queue;
    global usf.MetadataService.SharedTo sharedTo;
    global String type;
    global ListView() {

    }
}
global class ListViewFilter {
    global String field;
    global String operation;
    global String value;
    global ListViewFilter() {

    }
}
global class LiveAgentConfig {
    global Boolean enableLiveChat;
    global Boolean openNewAccountSubtab;
    global Boolean openNewCaseSubtab;
    global Boolean openNewContactSubtab;
    global Boolean openNewLeadSubtab;
    global Boolean openNewVFPageSubtab;
    global List<String> pageNamesToOpen;
    global Boolean showKnowledgeArticles;
    global LiveAgentConfig() {

    }
}
global class LiveAgentSettings extends usf.MetadataService.Metadata {
    global Boolean enableLiveAgent;
    global String fullName;
    global String type;
    global LiveAgentSettings() {

    }
}
global class LiveChatAgentConfig extends usf.MetadataService.Metadata {
    global usf.MetadataService.AgentConfigAssignments assignments;
    global String autoGreeting;
    global Integer capacity;
    global Integer criticalWaitTime;
    global String customAgentName;
    global Boolean enableAgentFileTransfer;
    global Boolean enableAgentSneakPeek;
    global Boolean enableAssistanceFlag;
    global Boolean enableAutoAwayOnDecline;
    global Boolean enableAutoAwayOnPushTimeout;
    global Boolean enableChatConferencing;
    global Boolean enableChatMonitoring;
    global Boolean enableChatTransferToAgent;
    global Boolean enableChatTransferToButton;
    global Boolean enableChatTransferToSkill;
    global Boolean enableLogoutSound;
    global Boolean enableNotifications;
    global Boolean enableRequestSound;
    global Boolean enableSneakPeek;
    global Boolean enableVisitorBlocking;
    global Boolean enableWhisperMessage;
    global String fullName;
    global String label;
    global String supervisorDefaultAgentStatusFilter;
    global String supervisorDefaultButtonFilter;
    global String supervisorDefaultSkillFilter;
    global usf.MetadataService.SupervisorAgentConfigSkills supervisorSkills;
    global usf.MetadataService.AgentConfigButtons transferableButtons;
    global usf.MetadataService.AgentConfigSkills transferableSkills;
    global String type;
    global LiveChatAgentConfig() {

    }
}
global class LiveChatButton extends usf.MetadataService.Metadata {
    global String animation;
    global String autoGreeting;
    global Integer chasitorIdleTimeout;
    global Integer chasitorIdleTimeoutWarning;
    global String chatPage;
    global String customAgentName;
    global usf.MetadataService.LiveChatButtonDeployments deployments;
    global Boolean enableQueue;
    global String fullName;
    global String inviteEndPosition;
    global String inviteImage;
    global String inviteStartPosition;
    global Boolean isActive;
    global String label;
    global Integer numberOfReroutingAttempts;
    global String offlineImage;
    global String onlineImage;
    global Boolean optionsCustomRoutingIsEnabled;
    global Boolean optionsHasChasitorIdleTimeout;
    global Boolean optionsHasInviteAfterAccept;
    global Boolean optionsHasInviteAfterReject;
    global Boolean optionsHasRerouteDeclinedRequest;
    global Boolean optionsIsAutoAccept;
    global Boolean optionsIsInviteAutoRemove;
    global Integer overallQueueLength;
    global Integer perAgentQueueLength;
    global String postChatPage;
    global String postChatUrl;
    global String preChatFormPage;
    global String preChatFormUrl;
    global Integer pushTimeOut;
    global String routingType;
    global String site;
    global usf.MetadataService.LiveChatButtonSkills skills;
    global Integer timeToRemoveInvite;
    global String type;
    global String type_x;
    global String windowLanguage;
    global LiveChatButton() {

    }
}
global class LiveChatButtonDeployments {
    global List<String> deployment;
    global LiveChatButtonDeployments() {

    }
}
global class LiveChatButtonSkills {
    global List<String> skill;
    global LiveChatButtonSkills() {

    }
}
global class LiveChatDeployment extends usf.MetadataService.Metadata {
    global String brandingImage;
    global Integer connectionTimeoutDuration;
    global Integer connectionWarningDuration;
    global Boolean displayQueuePosition;
    global usf.MetadataService.LiveChatDeploymentDomainWhitelist domainWhiteList;
    global Boolean enablePrechatApi;
    global Boolean enableTranscriptSave;
    global String fullName;
    global String label;
    global String mobileBrandingImage;
    global String site;
    global String type;
    global String windowTitle;
    global LiveChatDeployment() {

    }
}
global class LiveChatDeploymentDomainWhitelist {
    global List<String> domain;
    global LiveChatDeploymentDomainWhitelist() {

    }
}
global class LiveChatSensitiveDataRule {
    global String actionType;
    global String description;
    global Integer enforceOn;
    global Boolean isEnabled;
    global String pattern;
    global String replacement;
    global LiveChatSensitiveDataRule() {

    }
}
global class LiveMessageSettings {
    global Boolean enableLiveMessage;
    global LiveMessageSettings() {

    }
}
global class LogInfo {
    global String category;
    global String level;
    global LogInfo() {

    }
}
global class LookupFilter {
    global Boolean active;
    global String booleanFilter;
    global String description;
    global String errorMessage;
    global List<usf.MetadataService.FilterItem> filterItems;
    global String infoMessage;
    global Boolean isOptional;
    global LookupFilter() {

    }
}
global class LookupFilterTranslation {
    global String errorMessage;
    global String informationalMessage;
    global LookupFilterTranslation() {

    }
}
global class MacroSettings {
    global Boolean enableAdvancedSearch;
    global MacroSettings() {

    }
}
global class ManagedTopic {
    global String managedTopicType;
    global String name;
    global String parentName;
    global Integer position;
    global String topicDescription;
    global ManagedTopic() {

    }
}
global class ManagedTopics extends usf.MetadataService.Metadata {
    global String fullName;
    global List<usf.MetadataService.ManagedTopic> managedTopic;
    global String type;
    global ManagedTopics() {

    }
}
global class MarketingActionSettings extends usf.MetadataService.Metadata {
    global Boolean enableMarketingAction;
    global String fullName;
    global String type;
    global MarketingActionSettings() {

    }
}
global class MarketingResourceType extends usf.MetadataService.Metadata {
    global String description;
    global String fullName;
    global String masterLabel;
    global String object_x;
    global String provider;
    global String type;
    global MarketingResourceType() {

    }
}
global class MatchingRule extends usf.MetadataService.Metadata {
    global String booleanFilter;
    global String description;
    global String fullName;
    global String label;
    global List<usf.MetadataService.MatchingRuleItem> matchingRuleItems;
    global String ruleStatus;
    global String type;
    global MatchingRule() {

    }
}
global class MatchingRuleItem {
    global String blankValueBehavior;
    global String fieldName;
    global String matchingMethod;
    global MatchingRuleItem() {

    }
}
global class MatchingRules extends usf.MetadataService.Metadata {
    global String fullName;
    global List<usf.MetadataService.MatchingRule> matchingRules;
    global String type;
    global MatchingRules() {

    }
}
global virtual class Metadata {
    global String fullName;
    global Metadata() {

    }
}
global class MetadataPort {
    global usf.MetadataService.AllOrNoneHeader_element AllOrNoneHeader;
    global usf.MetadataService.CallOptions_element CallOptions;
    global String clientCert_x;
    global String clientCertName_x;
    global String clientCertPasswd_x;
    global usf.MetadataService.DebuggingHeader_element DebuggingHeader;
    global usf.MetadataService.DebuggingInfo_element DebuggingInfo;
    global String endpoint_x;
    global Map<String,String> inputHttpHeaders_x;
    global Map<String,String> outputHttpHeaders_x;
    global usf.MetadataService.SessionHeader_element SessionHeader;
    global Integer timeout_x;
    global MetadataPort() {

    }
    global usf.MetadataService.CancelDeployResult cancelDeploy(String String_x) {
        return null;
    }
    global usf.MetadataService.DeployResult checkDeployStatus(String asyncProcessId, Boolean includeDetails) {
        return null;
    }
    global usf.MetadataService.RetrieveResult checkRetrieveStatus(String asyncProcessId, Boolean includeZip) {
        return null;
    }
    global List<usf.MetadataService.SaveResult> createMetadata(List<usf.MetadataService.Metadata> metadata) {
        return null;
    }
    global List<usf.MetadataService.DeleteResult> deleteMetadata(String type_x, List<String> fullNames) {
        return null;
    }
    global usf.MetadataService.AsyncResult deploy(String ZipFile, usf.MetadataService.DeployOptions DeployOptions) {
        return null;
    }
    global String deployRecentValidation(String validationId) {
        return null;
    }
    global usf.MetadataService.DescribeMetadataResult describeMetadata(Double asOfVersion) {
        return null;
    }
    global usf.MetadataService.DescribeValueTypeResult describeValueType(String type_x) {
        return null;
    }
    global List<usf.MetadataService.FileProperties> listMetadata(List<usf.MetadataService.ListMetadataQuery> queries, Double asOfVersion) {
        return null;
    }
    global usf.MetadataService.IReadResult readMetadata(String type_x, List<String> fullNames) {
        return null;
    }
    global usf.MetadataService.SaveResult renameMetadata(String type_x, String oldFullName, String newFullName) {
        return null;
    }
    global usf.MetadataService.AsyncResult retrieve(usf.MetadataService.RetrieveRequest retrieveRequest) {
        return null;
    }
    global List<usf.MetadataService.SaveResult> updateMetadata(List<usf.MetadataService.Metadata> metadata) {
        return null;
    }
    global List<usf.MetadataService.UpsertResult> upsertMetadata(List<usf.MetadataService.Metadata> metadata) {
        return null;
    }
}
global class MetadataServiceExamplesException extends Exception {
}
global virtual class MetadataWithContent extends usf.MetadataService.Metadata {
    global String content;
    global MetadataWithContent() {

    }
}
global class MilestoneType extends usf.MetadataService.Metadata {
    global String description;
    global String fullName;
    global String recurrenceType;
    global String type;
    global MilestoneType() {

    }
}
global class MiniLayout {
    global List<String> fields;
    global List<usf.MetadataService.RelatedListItem> relatedLists;
    global MiniLayout() {

    }
}
global class MobileSettings extends usf.MetadataService.Metadata {
    global usf.MetadataService.ChatterMobileSettings chatterMobile;
    global usf.MetadataService.DashboardMobileSettings dashboardMobile;
    global String fullName;
    global usf.MetadataService.SFDCMobileSettings salesforceMobile;
    global usf.MetadataService.TouchMobileSettings touchMobile;
    global String type;
    global MobileSettings() {

    }
}
global class ModeratedEntityField {
    global String entityName;
    global String fieldName;
    global String keywordList;
    global ModeratedEntityField() {

    }
}
global class ModerationRule extends usf.MetadataService.Metadata {
    global String action;
    global Integer actionLimit;
    global Boolean active;
    global String description;
    global List<usf.MetadataService.ModeratedEntityField> entitiesAndFields;
    global String fullName;
    global String masterLabel;
    global Integer notifyLimit;
    global String timePeriod;
    global String type;
    global String type_x;
    global List<String> userCriteria;
    global String userMessage;
    global ModerationRule() {

    }
}
global class NameSettings extends usf.MetadataService.Metadata {
    global Boolean enableMiddleName;
    global Boolean enableNameSuffix;
    global String fullName;
    global String type;
    global NameSettings() {

    }
}
global class NamedCredential extends usf.MetadataService.Metadata {
    global Boolean allowMergeFieldsInBody;
    global Boolean allowMergeFieldsInHeader;
    global String authProvider;
    global String certificate;
    global String endpoint;
    global String fullName;
    global Boolean generateAuthorizationHeader;
    global String label;
    global String oauthRefreshToken;
    global String oauthScope;
    global String oauthToken;
    global String password;
    global String principalType;
    global String protocol;
    global String type;
    global String username;
    global NamedCredential() {

    }
}
global class NavigationLinkSet {
    global List<usf.MetadataService.NavigationMenuItem> navigationMenuItem;
    global NavigationLinkSet() {

    }
}
global class NavigationMenuItem {
    global String defaultListViewId;
    global Boolean globallyAvailable;
    global String label;
    global Integer position;
    global usf.MetadataService.NavigationSubMenu subMenu;
    global String target;
    global String targetPreference;
    global String type_x;
    global NavigationMenuItem() {

    }
}
global class NavigationSubMenu {
    global List<usf.MetadataService.NavigationMenuItem> navigationMenuItem;
    global NavigationSubMenu() {

    }
}
global class Network extends usf.MetadataService.Metadata {
    global String allowedExtensions;
    global Boolean allowInternalUserLogin;
    global Boolean allowMembersToFlag;
    global String caseCommentEmailTemplate;
    global String changePasswordTemplate;
    global usf.MetadataService.CommunityRoles communityRoles;
    global String description;
    global Boolean disableReputationRecordConversations;
    global String emailFooterLogo;
    global String emailFooterText;
    global String emailSenderAddress;
    global String emailSenderName;
    global Boolean enableCustomVFErrorPageOverrides;
    global Boolean enableDirectMessages;
    global Boolean enableGuestChatter;
    global Boolean enableGuestFileAccess;
    global Boolean enableInvitation;
    global Boolean enableKnowledgeable;
    global Boolean enableNicknameDisplay;
    global Boolean enablePrivateMessages;
    global Boolean enableReputation;
    global Boolean enableShowAllNetworkSettings;
    global Boolean enableSiteAsContainer;
    global Boolean enableTalkingAboutStats;
    global Boolean enableTopicAssignmentRules;
    global Boolean enableTopicSuggestions;
    global Boolean enableUpDownVote;
    global String feedChannel;
    global String forgotPasswordTemplate;
    global String fullName;
    global Boolean gatherCustomerSentimentData;
    global String logoutUrl;
    global Integer maxFileSizeKb;
    global usf.MetadataService.NavigationLinkSet navigationLinkSet;
    global usf.MetadataService.NetworkMemberGroup networkMemberGroups;
    global usf.MetadataService.NetworkPageOverride networkPageOverrides;
    global String newSenderAddress;
    global String picassoSite;
    global usf.MetadataService.RecommendationAudience recommendationAudience;
    global usf.MetadataService.RecommendationDefinition recommendationDefinition;
    global usf.MetadataService.ReputationLevelDefinitions reputationLevels;
    global usf.MetadataService.ReputationPointsRules reputationPointsRules;
    global Boolean selfRegistration;
    global String selfRegProfile;
    global Boolean sendWelcomeEmail;
    global String site;
    global String status;
    global usf.MetadataService.NetworkTabSet tabs;
    global String type;
    global String urlPathPrefix;
    global String welcomeTemplate;
    global Network() {

    }
}
global class NetworkAccess {
    global List<usf.MetadataService.IpRange> ipRanges;
    global NetworkAccess() {

    }
}
global class NetworkBranding extends usf.MetadataService.MetadataWithContent {
    global String content;
    global String fullName;
    global String loginFooterText;
    global String loginLogo;
    global String loginLogoName;
    global String loginPrimaryColor;
    global String loginQuaternaryColor;
    global String loginRightFrameUrl;
    global String network;
    global String pageFooter;
    global String pageHeader;
    global String primaryColor;
    global String primaryComplementColor;
    global String quaternaryColor;
    global String quaternaryComplementColor;
    global String secondaryColor;
    global String staticLogoImageUrl;
    global String tertiaryColor;
    global String tertiaryComplementColor;
    global String type;
    global String zeronaryColor;
    global String zeronaryComplementColor;
    global NetworkBranding() {

    }
}
global class NetworkMemberGroup {
    global List<String> permissionSet;
    global List<String> profile;
    global NetworkMemberGroup() {

    }
}
global class NetworkPageOverride {
    global String changePasswordPageOverrideSetting;
    global String forgotPasswordPageOverrideSetting;
    global String homePageOverrideSetting;
    global String loginPageOverrideSetting;
    global String selfRegProfilePageOverrideSetting;
    global NetworkPageOverride() {

    }
}
global class NetworkTabSet {
    global List<String> customTab;
    global String defaultTab;
    global List<String> standardTab;
    global NetworkTabSet() {

    }
}
global class NextAutomatedApprover {
    global Boolean useApproverFieldOfRecordOwner;
    global String userHierarchyField;
    global NextAutomatedApprover() {

    }
}
global class ObjectMapping {
    global String inputObject;
    global List<usf.MetadataService.ObjectMappingField> mappingFields;
    global String outputObject;
    global ObjectMapping() {

    }
}
global class ObjectMappingField {
    global String inputField;
    global String outputField;
    global ObjectMappingField() {

    }
}
global class ObjectNameCaseValue {
    global String article;
    global String caseType;
    global Boolean plural;
    global String possessive;
    global String value;
    global ObjectNameCaseValue() {

    }
}
global class ObjectRelationship {
    global usf.MetadataService.ObjectRelationship join_x;
    global Boolean outerJoin;
    global String relationship;
    global ObjectRelationship() {

    }
}
global class ObjectSearchSetting {
    global Boolean enhancedLookupEnabled;
    global Boolean lookupAutoCompleteEnabled;
    global String name;
    global Integer resultsPerPageCount;
    global ObjectSearchSetting() {

    }
}
global class ObjectUsage {
    global List<String> object_x;
    global ObjectUsage() {

    }
}
global class OpportunityListFieldsLabelMapping {
    global String field;
    global String label;
    global OpportunityListFieldsLabelMapping() {

    }
}
global class OpportunityListFieldsSelectedSettings {
    global List<String> field;
    global OpportunityListFieldsSelectedSettings() {

    }
}
global class OpportunityListFieldsUnselectedSettings {
    global List<String> field;
    global OpportunityListFieldsUnselectedSettings() {

    }
}
global class OpportunitySettings extends usf.MetadataService.Metadata {
    global Boolean autoActivateNewReminders;
    global Boolean enableFindSimilarOpportunities;
    global Boolean enableOpportunityTeam;
    global Boolean enableUpdateReminders;
    global usf.MetadataService.FindSimilarOppFilter findSimilarOppFilter;
    global String fullName;
    global Boolean promptToAddProducts;
    global String type;
    global OpportunitySettings() {

    }
}
global class Orchestration {
    global String context;
    global String masterLabel;
    global Orchestration() {

    }
}
global class OrchestrationContext {
    global String description;
    global List<usf.MetadataService.OrchestrationContextEvent> events;
    global String masterLabel;
    global String runtimeType;
    global String salesforceObject;
    global String salesforceObjectPrimaryKey;
    global OrchestrationContext() {

    }
}
global class OrchestrationContextEvent {
    global String eventType;
    global String orchestrationEvent;
    global String platformEvent;
    global String platformEventPrimaryKey;
    global OrchestrationContextEvent() {

    }
}
global class OrderSettings extends usf.MetadataService.Metadata {
    global Boolean enableNegativeQuantity;
    global Boolean enableOrders;
    global Boolean enableReductionOrders;
    global Boolean enableZeroQuantity;
    global String fullName;
    global String type;
    global OrderSettings() {

    }
}
global class OrgPreferenceSettings extends usf.MetadataService.Metadata {
    global String fullName;
    global List<usf.MetadataService.OrganizationSettingsDetail> preferences;
    global String type;
    global OrgPreferenceSettings() {

    }
}
global class OrganizationSettingsDetail {
    global String settingName;
    global Boolean settingValue;
    global OrganizationSettingsDetail() {

    }
}
global class PackageTypeMembers {
    global List<String> members;
    global String name;
    global PackageTypeMembers() {

    }
}
global class PackageVersion {
    global Integer majorNumber;
    global Integer minorNumber;
    global String namespace;
    global PackageVersion() {

    }
}
global class Package_x extends usf.MetadataService.Metadata {
    global String apiAccessLevel;
    global String description;
    global String fullName;
    global String namespacePrefix;
    global List<usf.MetadataService.ProfileObjectPermissions> objectPermissions;
    global String packageType;
    global String postInstallClass;
    global String setupWeblink;
    global String type;
    global List<usf.MetadataService.PackageTypeMembers> types;
    global String uninstallClass;
    global String version;
    global Package_x() {

    }
}
global class PasswordPolicies {
    global String apiOnlyUserHomePageURL;
    global String complexity;
    global String expiration;
    global String historyRestriction;
    global String lockoutInterval;
    global String maxLoginAttempts;
    global String minimumPasswordLength;
    global Boolean minimumPasswordLifetime;
    global Boolean obscureSecretAnswer;
    global String passwordAssistanceMessage;
    global String passwordAssistanceURL;
    global String questionRestriction;
    global PasswordPolicies() {

    }
}
global class PathAssistant {
    global Boolean active;
    global String entityName;
    global String fieldName;
    global String masterLabel;
    global List<usf.MetadataService.PathAssistantStep> pathAssistantSteps;
    global String recordTypeName;
    global PathAssistant() {

    }
}
global class PathAssistantSettings {
    global Boolean pathAssistantEnabled;
    global PathAssistantSettings() {

    }
}
global class PathAssistantStep {
    global List<String> fieldNames;
    global String info;
    global String picklistValueName;
    global PathAssistantStep() {

    }
}
global class PermissionSet extends usf.MetadataService.Metadata {
    global List<usf.MetadataService.PermissionSetApplicationVisibility> applicationVisibilities;
    global List<usf.MetadataService.PermissionSetApexClassAccess> classAccesses;
    global List<usf.MetadataService.PermissionSetCustomPermissions> customPermissions;
    global String description;
    global List<usf.MetadataService.PermissionSetExternalDataSourceAccess> externalDataSourceAccesses;
    global List<usf.MetadataService.PermissionSetFieldPermissions> fieldPermissions;
    global String fullName;
    global Boolean hasActivationRequired;
    global String label;
    global String license;
    global List<usf.MetadataService.PermissionSetObjectPermissions> objectPermissions;
    global List<usf.MetadataService.PermissionSetApexPageAccess> pageAccesses;
    global List<usf.MetadataService.PermissionSetRecordTypeVisibility> recordTypeVisibilities;
    global List<usf.MetadataService.PermissionSetTabSetting> tabSettings;
    global String type;
    global List<usf.MetadataService.PermissionSetUserPermission> userPermissions;
    global PermissionSet() {

    }
}
global class PermissionSetApexClassAccess {
    global String apexClass;
    global Boolean enabled;
    global PermissionSetApexClassAccess() {

    }
}
global class PermissionSetApexPageAccess {
    global String apexPage;
    global Boolean enabled;
    global PermissionSetApexPageAccess() {

    }
}
global class PermissionSetApplicationVisibility {
    global String application;
    global Boolean visible;
    global PermissionSetApplicationVisibility() {

    }
}
global class PermissionSetCustomPermissions {
    global Boolean enabled;
    global String name;
    global PermissionSetCustomPermissions() {

    }
}
global class PermissionSetExternalDataSourceAccess {
    global Boolean enabled;
    global String externalDataSource;
    global PermissionSetExternalDataSourceAccess() {

    }
}
global class PermissionSetFieldPermissions {
    global Boolean editable;
    global String field;
    global Boolean readable;
    global PermissionSetFieldPermissions() {

    }
}
global class PermissionSetGroup {
    global String description;
    global Boolean isCalculatingChanges;
    global String label;
    global List<String> permissionSets;
    global PermissionSetGroup() {

    }
}
global class PermissionSetObjectPermissions {
    global Boolean allowCreate;
    global Boolean allowDelete;
    global Boolean allowEdit;
    global Boolean allowRead;
    global Boolean modifyAllRecords;
    global String object_x;
    global Boolean viewAllRecords;
    global PermissionSetObjectPermissions() {

    }
}
global class PermissionSetRecordTypeVisibility {
    global String recordType;
    global Boolean visible;
    global PermissionSetRecordTypeVisibility() {

    }
}
global class PermissionSetTabSetting {
    global String tab;
    global String visibility;
    global PermissionSetTabSetting() {

    }
}
global class PermissionSetUserPermission {
    global Boolean enabled;
    global String name;
    global PermissionSetUserPermission() {

    }
}
global class PersonListSettings {
    global Boolean enablePersonList;
    global PersonListSettings() {

    }
}
global class PersonalJourneySettings extends usf.MetadataService.Metadata {
    global Boolean enableExactTargetForSalesforceApps;
    global String fullName;
    global String type;
    global PersonalJourneySettings() {

    }
}
global class Picklist {
    global String controllingField;
    global List<usf.MetadataService.PicklistValue> picklistValues;
    global Boolean restrictedPicklist;
    global Boolean sorted;
    global Picklist() {

    }
}
global class PicklistEntry {
    global Boolean active;
    global Boolean defaultValue;
    global String label;
    global String validFor;
    global String value;
    global PicklistEntry() {

    }
}
global class PicklistValue extends usf.MetadataService.GlobalPicklistValue {
    global Boolean allowEmail;
    global Boolean closed;
    global String color;
    global List<String> controllingFieldValues;
    global Boolean converted;
    global Boolean cssExposed;
    global Boolean default_x;
    global String description;
    global String forecastCategory;
    global String fullName;
    global Boolean highPriority;
    global Boolean isActive;
    global Integer probability;
    global String reverseRole;
    global Boolean reviewed;
    global String type;
    global Boolean won;
    global PicklistValue() {

    }
}
global class PicklistValueTranslation {
    global String masterLabel;
    global String translation;
    global PicklistValueTranslation() {

    }
}
global class PlatformActionList {
    global String actionListContext;
    global List<usf.MetadataService.PlatformActionListItem> platformActionListItems;
    global String relatedSourceEntity;
    global PlatformActionList() {

    }
}
global class PlatformActionListItem {
    global String actionName;
    global String actionType;
    global Integer sortOrder;
    global String subtype;
    global PlatformActionListItem() {

    }
}
global class PlatformCachePartition {
    global String description;
    global Boolean isDefaultPartition;
    global String masterLabel;
    global List<usf.MetadataService.PlatformCachePartitionType> platformCachePartitionTypes;
    global PlatformCachePartition() {

    }
}
global class PlatformCachePartitionType {
    global Integer allocatedCapacity;
    global Integer allocatedPurchasedCapacity;
    global Integer allocatedTrialCapacity;
    global String cacheType;
    global PlatformCachePartitionType() {

    }
}
global class Portal extends usf.MetadataService.Metadata {
    global Boolean active;
    global String admin;
    global String defaultLanguage;
    global String description;
    global String emailSenderAddress;
    global String emailSenderName;
    global Boolean enableSelfCloseCase;
    global String footerDocument;
    global String forgotPassTemplate;
    global String fullName;
    global String headerDocument;
    global Boolean isSelfRegistrationActivated;
    global String loginHeaderDocument;
    global String logoDocument;
    global String logoutUrl;
    global String newCommentTemplate;
    global String newPassTemplate;
    global String newUserTemplate;
    global String ownerNotifyTemplate;
    global String selfRegNewUserUrl;
    global String selfRegUserDefaultProfile;
    global String selfRegUserDefaultRole;
    global String selfRegUserTemplate;
    global Boolean showActionConfirmation;
    global String stylesheetDocument;
    global String type;
    global String type_x;
    global Portal() {

    }
}
global class PostTemplate extends usf.MetadataService.Metadata {
    global Boolean default_x;
    global String description;
    global List<String> fields;
    global String fullName;
    global String label;
    global String type;
    global PostTemplate() {

    }
}
global class PrimaryTabComponents {
    global List<usf.MetadataService.Container> containers;
    global PrimaryTabComponents() {

    }
}
global class ProductSettings extends usf.MetadataService.Metadata {
    global Boolean enableCascadeActivateToRelatedPrices;
    global Boolean enableQuantitySchedule;
    global Boolean enableRevenueSchedule;
    global String fullName;
    global String type;
    global ProductSettings() {

    }
}
global class Profile extends usf.MetadataService.Metadata {
    global List<usf.MetadataService.ProfileApplicationVisibility> applicationVisibilities;
    global List<usf.MetadataService.ProfileCategoryGroupVisibility> categoryGroupVisibilities;
    global List<usf.MetadataService.ProfileApexClassAccess> classAccesses;
    global Boolean custom;
    global List<usf.MetadataService.ProfileCustomPermissions> customPermissions;
    global String description;
    global List<usf.MetadataService.ProfileExternalDataSourceAccess> externalDataSourceAccesses;
    global List<usf.MetadataService.ProfileFieldLevelSecurity> fieldPermissions;
    global String fullName;
    global List<usf.MetadataService.ProfileLayoutAssignment> layoutAssignments;
    global usf.MetadataService.ProfileLoginHours loginHours;
    global List<usf.MetadataService.ProfileLoginIpRange> loginIpRanges;
    global List<usf.MetadataService.ProfileObjectPermissions> objectPermissions;
    global List<usf.MetadataService.ProfileApexPageAccess> pageAccesses;
    global List<usf.MetadataService.ProfileActionOverride> profileActionOverrides;
    global List<usf.MetadataService.ProfileRecordTypeVisibility> recordTypeVisibilities;
    global List<usf.MetadataService.ProfileTabVisibility> tabVisibilities;
    global String type;
    global String userLicense;
    global List<usf.MetadataService.ProfileUserPermission> userPermissions;
    global Profile() {

    }
}
global class ProfileActionOverride {
    global String actionName;
    global String content;
    global String formFactor;
    global String pageOrSobjectType;
    global String recordType;
    global String type_x;
    global ProfileActionOverride() {

    }
}
global class ProfileApexClassAccess {
    global String apexClass;
    global Boolean enabled;
    global ProfileApexClassAccess() {

    }
}
global class ProfileApexPageAccess {
    global String apexPage;
    global Boolean enabled;
    global ProfileApexPageAccess() {

    }
}
global class ProfileApplicationVisibility {
    global String application;
    global Boolean default_x;
    global Boolean visible;
    global ProfileApplicationVisibility() {

    }
}
global class ProfileCategoryGroupVisibility {
    global List<String> dataCategories;
    global String dataCategoryGroup;
    global String visibility;
    global ProfileCategoryGroupVisibility() {

    }
}
global class ProfileCustomPermissions {
    global Boolean enabled;
    global String name;
    global ProfileCustomPermissions() {

    }
}
global class ProfileExternalDataSourceAccess {
    global Boolean enabled;
    global String externalDataSource;
    global ProfileExternalDataSourceAccess() {

    }
}
global class ProfileFieldLevelSecurity {
    global Boolean editable;
    global String field;
    global Boolean readable;
    global ProfileFieldLevelSecurity() {

    }
}
global class ProfileLayoutAssignment {
    global String layout;
    global String recordType;
    global ProfileLayoutAssignment() {

    }
}
global class ProfileLoginHours {
    global String fridayEnd;
    global String fridayStart;
    global String mondayEnd;
    global String mondayStart;
    global String saturdayEnd;
    global String saturdayStart;
    global String sundayEnd;
    global String sundayStart;
    global String thursdayEnd;
    global String thursdayStart;
    global String tuesdayEnd;
    global String tuesdayStart;
    global String wednesdayEnd;
    global String wednesdayStart;
    global ProfileLoginHours() {

    }
}
global class ProfileLoginIpRange {
    global String description;
    global String endAddress;
    global String startAddress;
    global ProfileLoginIpRange() {

    }
}
global class ProfileObjectPermissions {
    global Boolean allowCreate;
    global Boolean allowDelete;
    global Boolean allowEdit;
    global Boolean allowRead;
    global Boolean modifyAllRecords;
    global String object_x;
    global Boolean viewAllRecords;
    global ProfileObjectPermissions() {

    }
}
global class ProfilePasswordPolicy extends usf.MetadataService.Metadata {
    global String fullName;
    global Integer lockoutInterval;
    global Integer maxLoginAttempts;
    global Integer minimumPasswordLength;
    global Boolean minimumPasswordLifetime;
    global Boolean obscure;
    global Integer passwordComplexity;
    global Integer passwordExpiration;
    global Integer passwordHistory;
    global Integer passwordQuestion;
    global String profile;
    global String type;
    global ProfilePasswordPolicy() {

    }
}
global class ProfileRecordTypeVisibility {
    global Boolean default_x;
    global Boolean personAccountDefault;
    global String recordType;
    global Boolean visible;
    global ProfileRecordTypeVisibility() {

    }
}
global class ProfileSessionSetting extends usf.MetadataService.Metadata {
    global Boolean externalCommunityUserIdentityVerif;
    global Boolean forceLogout;
    global String fullName;
    global String profile;
    global String requiredSessionLevel;
    global Boolean sessionPersistence;
    global Integer sessionTimeout;
    global Boolean sessionTimeoutWarning;
    global String type;
    global ProfileSessionSetting() {

    }
}
global class ProfileTabVisibility {
    global String tab;
    global String visibility;
    global ProfileTabVisibility() {

    }
}
global class ProfileUserPermission {
    global Boolean enabled;
    global String name;
    global ProfileUserPermission() {

    }
}
global class PushNotification {
    global List<String> fieldNames;
    global String objectName;
    global PushNotification() {

    }
}
global class Queue extends usf.MetadataService.Metadata {
    global Boolean doesSendEmailToMembers;
    global String email;
    global String fullName;
    global String name;
    global usf.MetadataService.QueueMembers queueMembers;
    global String queueRoutingConfig;
    global List<usf.MetadataService.QueueSobject> queueSobject;
    global String type;
    global Queue() {

    }
}
global class QueueMembers {
    global usf.MetadataService.globalGroups globalGroups;
    global usf.MetadataService.RoleAndSubordinates roleAndSubordinates;
    global usf.MetadataService.RoleAndSubordinatesInternal roleAndSubordinatesInternal;
    global usf.MetadataService.Roles roles;
    global usf.MetadataService.Users users;
    global QueueMembers() {

    }
}
global class QueueSobject {
    global String sobjectType;
    global QueueSobject() {

    }
}
global class QuickAction extends usf.MetadataService.Metadata {
    global String canvas;
    global String description;
    global List<usf.MetadataService.FieldOverride> fieldOverrides;
    global String flowDefinition;
    global String fullName;
    global Integer height;
    global String icon;
    global Boolean isProtected;
    global String label;
    global String lightningComponent;
    global Boolean optionsCreateFeedItem;
    global String page_x;
    global usf.MetadataService.QuickActionLayout quickActionLayout;
    global usf.MetadataService.QuickActionSendEmailOptions quickActionSendEmailOptions;
    global String standardLabel;
    global String successMessage;
    global String targetObject;
    global String targetParentField;
    global String targetRecordType;
    global String type;
    global String type_x;
    global Integer width;
    global QuickAction() {

    }
}
global class QuickActionLayout {
    global String layoutSectionStyle;
    global List<usf.MetadataService.QuickActionLayoutColumn> quickActionLayoutColumns;
    global QuickActionLayout() {

    }
}
global class QuickActionLayoutColumn {
    global List<usf.MetadataService.QuickActionLayoutItem> quickActionLayoutItems;
    global QuickActionLayoutColumn() {

    }
}
global class QuickActionLayoutItem {
    global Boolean emptySpace;
    global String field;
    global String uiBehavior;
    global QuickActionLayoutItem() {

    }
}
global class QuickActionList {
    global List<usf.MetadataService.QuickActionListItem> quickActionListItems;
    global QuickActionList() {

    }
}
global class QuickActionListItem {
    global String quickActionName;
    global QuickActionListItem() {

    }
}
global class QuickActionSendEmailOptions {
    global String defaultEmailTemplateName;
    global Boolean ignoreDefaultEmailTemplateSubject;
    global QuickActionSendEmailOptions() {

    }
}
global class QuickActionTranslation {
    global String label;
    global String name;
    global QuickActionTranslation() {

    }
}
global class QuotasSettings {
    global Boolean showQuotas;
    global QuotasSettings() {

    }
}
global class QuoteSettings extends usf.MetadataService.Metadata {
    global Boolean enableQuote;
    global String fullName;
    global String type;
    global QuoteSettings() {

    }
}
global class ReadAccountSettingsResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.AccountSettings> records;
    global ReadAccountSettingsResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadActionLinkGroupTemplateResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.ActionLinkGroupTemplate> records;
    global ReadActionLinkGroupTemplateResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadActivitiesSettingsResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.ActivitiesSettings> records;
    global ReadActivitiesSettingsResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadAddressSettingsResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.AddressSettings> records;
    global ReadAddressSettingsResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadAnalyticSnapshotResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.AnalyticSnapshot> records;
    global ReadAnalyticSnapshotResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadApexClassResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.ApexClass> records;
    global ReadApexClassResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadApexComponentResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.ApexComponent> records;
    global ReadApexComponentResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadApexPageResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.ApexPage> records;
    global ReadApexPageResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadApexTestSuiteResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.ApexTestSuite> records;
    global ReadApexTestSuiteResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadApexTriggerResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.ApexTrigger> records;
    global ReadApexTriggerResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadAppMenuResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.AppMenu> records;
    global ReadAppMenuResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadApprovalProcessResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.ApprovalProcess> records;
    global ReadApprovalProcessResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadAssignmentRuleResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.AssignmentRule> records;
    global ReadAssignmentRuleResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadAssignmentRulesResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.AssignmentRules> records;
    global ReadAssignmentRulesResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadAuraDefinitionBundleResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.AuraDefinitionBundle> records;
    global ReadAuraDefinitionBundleResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadAuthProviderResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.AuthProvider> records;
    global ReadAuthProviderResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadAutoResponseRuleResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.AutoResponseRule> records;
    global ReadAutoResponseRuleResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadAutoResponseRulesResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.AutoResponseRules> records;
    global ReadAutoResponseRulesResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadBrandingSetResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.BrandingSet> records;
    global ReadBrandingSetResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadBusinessHoursEntryResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.BusinessHoursEntry> records;
    global ReadBusinessHoursEntryResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadBusinessHoursSettingsResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.BusinessHoursSettings> records;
    global ReadBusinessHoursSettingsResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadBusinessProcessResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.BusinessProcess> records;
    global ReadBusinessProcessResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadCallCenterResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.CallCenter> records;
    global ReadCallCenterResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadCaseSettingsResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.CaseSettings> records;
    global ReadCaseSettingsResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadCaseSubjectParticleResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.CaseSubjectParticle> records;
    global ReadCaseSubjectParticleResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadCertificateResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.Certificate> records;
    global ReadCertificateResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadChannelLayoutResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.ChannelLayout> records;
    global ReadChannelLayoutResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadChatterAnswersSettingsResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.ChatterAnswersSettings> records;
    global ReadChatterAnswersSettingsResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadCommunityResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.Community> records;
    global ReadCommunityResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadCompactLayoutResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.CompactLayout> records;
    global ReadCompactLayoutResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadCompanySettingsResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.CompanySettings> records;
    global ReadCompanySettingsResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadConnectedAppResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.ConnectedApp> records;
    global ReadConnectedAppResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadContentAssetResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.ContentAsset> records;
    global ReadContentAssetResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadContractSettingsResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.ContractSettings> records;
    global ReadContractSettingsResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadCorsWhitelistOriginResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.CorsWhitelistOrigin> records;
    global ReadCorsWhitelistOriginResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadCspTrustedSiteResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.CspTrustedSite> records;
    global ReadCspTrustedSiteResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadCustomApplicationComponentResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.CustomApplicationComponent> records;
    global ReadCustomApplicationComponentResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadCustomApplicationResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.CustomApplication> records;
    global ReadCustomApplicationResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadCustomDataTypeResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.CustomDataType> records;
    global ReadCustomDataTypeResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadCustomFieldResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.CustomField> records;
    global ReadCustomFieldResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadCustomLabelResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.CustomLabel> records;
    global ReadCustomLabelResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadCustomLabelsResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.CustomLabels> records;
    global ReadCustomLabelsResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadCustomMetadataResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.CustomMetadata> records;
    global ReadCustomMetadataResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadCustomObjectResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.CustomObject> records;
    global ReadCustomObjectResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadCustomObjectTranslationResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.CustomObjectTranslation> records;
    global ReadCustomObjectTranslationResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadCustomPageWebLinkResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.CustomPageWebLink> records;
    global ReadCustomPageWebLinkResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadCustomPermissionResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.CustomPermission> records;
    global ReadCustomPermissionResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadCustomSiteResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.CustomSite> records;
    global ReadCustomSiteResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadCustomTabResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.CustomTab> records;
    global ReadCustomTabResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadCustomValueResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.CustomValue> records;
    global ReadCustomValueResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadDashboardFolderResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.DashboardFolder> records;
    global ReadDashboardFolderResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadDashboardResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.Dashboard> records;
    global ReadDashboardResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadDataCategoryGroupResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.DataCategoryGroup> records;
    global ReadDataCategoryGroupResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadDelegateGroupResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.DelegateGroup> records;
    global ReadDelegateGroupResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadDocumentFolderResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.DocumentFolder> records;
    global ReadDocumentFolderResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadDocumentResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.Document> records;
    global ReadDocumentResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadEclairGeoDataResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.EclairGeoData> records;
    global ReadEclairGeoDataResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadEmailFolderResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.EmailFolder> records;
    global ReadEmailFolderResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadEmailServicesFunctionResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.EmailServicesFunction> records;
    global ReadEmailServicesFunctionResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadEmailTemplateResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.EmailTemplate> records;
    global ReadEmailTemplateResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadEmbeddedServiceBrandingResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.EmbeddedServiceBranding> records;
    global ReadEmbeddedServiceBrandingResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadEmbeddedServiceConfigResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.EmbeddedServiceConfig> records;
    global ReadEmbeddedServiceConfigResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadEmbeddedServiceLiveAgentResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.EmbeddedServiceLiveAgent> records;
    global ReadEmbeddedServiceLiveAgentResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadEntitlementProcessResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.EntitlementProcess> records;
    global ReadEntitlementProcessResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadEntitlementSettingsResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.EntitlementSettings> records;
    global ReadEntitlementSettingsResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadEntitlementTemplateResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.EntitlementTemplate> records;
    global ReadEntitlementTemplateResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadEscalationRuleResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.EscalationRule> records;
    global ReadEscalationRuleResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadEscalationRulesResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.EscalationRules> records;
    global ReadEscalationRulesResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadEventDeliveryResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.EventDelivery> records;
    global ReadEventDeliveryResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadEventSubscriptionResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.EventSubscription> records;
    global ReadEventSubscriptionResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadEventTypeResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.EventType> records;
    global ReadEventTypeResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadExternalDataSourceResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.ExternalDataSource> records;
    global ReadExternalDataSourceResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadExternalServiceRegistrationResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.ExternalServiceRegistration> records;
    global ReadExternalServiceRegistrationResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadFieldSetResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.FieldSet> records;
    global ReadFieldSetResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadFileUploadAndDownloadSecuritySettingsResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.FileUploadAndDownloadSecuritySettings> records;
    global ReadFileUploadAndDownloadSecuritySettingsResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadFlexiPageResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.FlexiPage> records;
    global ReadFlexiPageResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadFlowResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.Flow> records;
    global ReadFlowResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadFolderResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.Folder> records;
    global ReadFolderResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadForecastingSettingsResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.ForecastingSettings> records;
    global ReadForecastingSettingsResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadGlobalPicklistValueResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.GlobalPicklistValue> records;
    global ReadGlobalPicklistValueResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadGlobalValueSetResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.GlobalValueSet> records;
    global ReadGlobalValueSetResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadGroupResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.Group_x> records;
    global ReadGroupResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadHomePageComponentResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.HomePageComponent> records;
    global ReadHomePageComponentResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadHomePageLayoutResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.HomePageLayout> records;
    global ReadHomePageLayoutResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadIdeasSettingsResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.IdeasSettings> records;
    global ReadIdeasSettingsResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadInstalledPackageResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.InstalledPackage> records;
    global ReadInstalledPackageResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadKnowledgeSettingsResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.KnowledgeSettings> records;
    global ReadKnowledgeSettingsResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadLayoutResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.Layout> records;
    global ReadLayoutResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadLeadConvertSettingsResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.LeadConvertSettings> records;
    global ReadLeadConvertSettingsResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadLetterheadResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.Letterhead> records;
    global ReadLetterheadResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadLicenseDefinitionResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.LicenseDefinition> records;
    global ReadLicenseDefinitionResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadListViewResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.ListView> records;
    global ReadListViewResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadLiveAgentSettingsResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.LiveAgentSettings> records;
    global ReadLiveAgentSettingsResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadLiveChatAgentConfigResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.LiveChatAgentConfig> records;
    global ReadLiveChatAgentConfigResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadLiveChatButtonResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.LiveChatButton> records;
    global ReadLiveChatButtonResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadLiveChatDeploymentResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.LiveChatDeployment> records;
    global ReadLiveChatDeploymentResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadManagedTopicsResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.ManagedTopics> records;
    global ReadManagedTopicsResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadMarketingActionSettingsResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.MarketingActionSettings> records;
    global ReadMarketingActionSettingsResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadMarketingResourceTypeResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.MarketingResourceType> records;
    global ReadMarketingResourceTypeResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadMatchingRuleResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.MatchingRule> records;
    global ReadMatchingRuleResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadMatchingRulesResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.MatchingRules> records;
    global ReadMatchingRulesResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadMetadataWithContentResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.MetadataWithContent> records;
    global ReadMetadataWithContentResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadMilestoneTypeResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.MilestoneType> records;
    global ReadMilestoneTypeResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadMobileSettingsResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.MobileSettings> records;
    global ReadMobileSettingsResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadModerationRuleResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.ModerationRule> records;
    global ReadModerationRuleResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadNameSettingsResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.NameSettings> records;
    global ReadNameSettingsResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadNamedCredentialResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.NamedCredential> records;
    global ReadNamedCredentialResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadNetworkBrandingResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.NetworkBranding> records;
    global ReadNetworkBrandingResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadNetworkResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.Network> records;
    global ReadNetworkResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadOpportunitySettingsResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.OpportunitySettings> records;
    global ReadOpportunitySettingsResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadOrderSettingsResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.OrderSettings> records;
    global ReadOrderSettingsResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadOrgPreferenceSettingsResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.OrgPreferenceSettings> records;
    global ReadOrgPreferenceSettingsResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadPackageResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.Package_x> records;
    global ReadPackageResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadPermissionSetResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.PermissionSet> records;
    global ReadPermissionSetResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadPersonalJourneySettingsResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.PersonalJourneySettings> records;
    global ReadPersonalJourneySettingsResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadPicklistValueResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.PicklistValue> records;
    global ReadPicklistValueResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadPortalResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.Portal> records;
    global ReadPortalResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadPostTemplateResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.PostTemplate> records;
    global ReadPostTemplateResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadProductSettingsResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.ProductSettings> records;
    global ReadProductSettingsResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadProfilePasswordPolicyResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.ProfilePasswordPolicy> records;
    global ReadProfilePasswordPolicyResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadProfileResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.Profile> records;
    global ReadProfileResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadProfileSessionSettingResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.ProfileSessionSetting> records;
    global ReadProfileSessionSettingResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadQueueResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.Queue> records;
    global ReadQueueResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadQuickActionResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.QuickAction> records;
    global ReadQuickActionResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadQuoteSettingsResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.QuoteSettings> records;
    global ReadQuoteSettingsResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadRecordTypeResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.RecordType> records;
    global ReadRecordTypeResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadRemoteSiteSettingResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.RemoteSiteSetting> records;
    global ReadRemoteSiteSettingResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadReportFolderResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.ReportFolder> records;
    global ReadReportFolderResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadReportResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.Report> records;
    global ReadReportResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadReportTypeResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.ReportType> records;
    global ReadReportTypeResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadResult {
    global List<usf.MetadataService.Metadata> records;
    global ReadResult() {

    }
}
global class ReadRoleOrTerritoryResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.RoleOrTerritory> records;
    global ReadRoleOrTerritoryResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadSamlSsoConfigResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.SamlSsoConfig> records;
    global ReadSamlSsoConfigResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadScontrolResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.Scontrol> records;
    global ReadScontrolResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadSearchSettingsResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.SearchSettings> records;
    global ReadSearchSettingsResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadSecuritySettingsResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.SecuritySettings> records;
    global ReadSecuritySettingsResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadSharingBaseRuleResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.SharingBaseRule> records;
    global ReadSharingBaseRuleResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadSharingCriteriaRuleResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.SharingCriteriaRule> records;
    global ReadSharingCriteriaRuleResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadSharingOwnerRuleResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.SharingOwnerRule> records;
    global ReadSharingOwnerRuleResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadSharingReasonResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.SharingReason> records;
    global ReadSharingReasonResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadSharingRulesResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.SharingRules> records;
    global ReadSharingRulesResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadSharingSetResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.SharingSet> records;
    global ReadSharingSetResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadSharingTerritoryRuleResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.SharingTerritoryRule> records;
    global ReadSharingTerritoryRuleResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadSiteDotComResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.SiteDotCom> records;
    global ReadSiteDotComResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadSkillResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.Skill> records;
    global ReadSkillResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadSocialCustomerServiceSettingsResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.SocialCustomerServiceSettings> records;
    global ReadSocialCustomerServiceSettingsResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadStandardValueResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.StandardValue> records;
    global ReadStandardValueResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadStandardValueSetResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.StandardValueSet> records;
    global ReadStandardValueSetResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadStaticResourceResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.StaticResource> records;
    global ReadStaticResourceResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadSynonymDictionaryResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.SynonymDictionary> records;
    global ReadSynonymDictionaryResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadTerritory2ModelResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.Territory2Model> records;
    global ReadTerritory2ModelResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadTerritory2Result implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.Territory2> records;
    global ReadTerritory2Result() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadTerritory2SettingsResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.Territory2Settings> records;
    global ReadTerritory2SettingsResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadTerritory2TypeResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.Territory2Type> records;
    global ReadTerritory2TypeResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadTopicsForObjectsResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.TopicsForObjects> records;
    global ReadTopicsForObjectsResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadTranslationsResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.Translations> records;
    global ReadTranslationsResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadUserCriteriaResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.UserCriteria> records;
    global ReadUserCriteriaResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadValidationRuleResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.ValidationRule> records;
    global ReadValidationRuleResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadVisualizationPluginResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.VisualizationPlugin> records;
    global ReadVisualizationPluginResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadWaveApplicationResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.WaveApplication> records;
    global ReadWaveApplicationResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadWaveDashboardResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.WaveDashboard> records;
    global ReadWaveDashboardResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadWaveDataflowResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.WaveDataflow> records;
    global ReadWaveDataflowResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadWaveDatasetResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.WaveDataset> records;
    global ReadWaveDatasetResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadWaveLensResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.WaveLens> records;
    global ReadWaveLensResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadWavexmdResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.WaveXmd> records;
    global ReadWavexmdResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadWebLinkResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.WebLink> records;
    global ReadWebLinkResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadWorkflowActionResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.WorkflowAction> records;
    global ReadWorkflowActionResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadWorkflowAlertResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.WorkflowAlert> records;
    global ReadWorkflowAlertResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadWorkflowFieldUpdateResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.WorkflowFieldUpdate> records;
    global ReadWorkflowFieldUpdateResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadWorkflowKnowledgePublishResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.WorkflowKnowledgePublish> records;
    global ReadWorkflowKnowledgePublishResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadWorkflowOutboundMessageResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.WorkflowOutboundMessage> records;
    global ReadWorkflowOutboundMessageResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadWorkflowResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.Workflow> records;
    global ReadWorkflowResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadWorkflowRuleResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.WorkflowRule> records;
    global ReadWorkflowRuleResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadWorkflowSendResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.WorkflowSend> records;
    global ReadWorkflowSendResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadWorkflowTaskResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.WorkflowTask> records;
    global ReadWorkflowTaskResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class ReadXOrgHubResult implements usf.MetadataService.IReadResult {
    global List<usf.MetadataService.XOrgHub> records;
    global ReadXOrgHubResult() {

    }
    global List<usf.MetadataService.Metadata> getRecords() {
        return null;
    }
}
global class RecommendationAudience {
    global List<usf.MetadataService.RecommendationAudienceDetail> recommendationAudienceDetails;
    global RecommendationAudience() {

    }
}
global class RecommendationAudienceDetail {
    global String audienceCriteriaType;
    global String audienceCriteriaValue;
    global String setupName;
    global RecommendationAudienceDetail() {

    }
}
global class RecommendationDefinition {
    global List<usf.MetadataService.RecommendationDefinitionDetail> recommendationDefinitionDetails;
    global RecommendationDefinition() {

    }
}
global class RecommendationDefinitionDetail {
    global String actionUrl;
    global String description;
    global String linkText;
    global usf.MetadataService.ScheduledRecommendation scheduledRecommendations;
    global String setupName;
    global String title;
    global RecommendationDefinitionDetail() {

    }
}
global class RecommendationStrategy {
    global String description;
    global String masterLabel;
    global String recommendationStrategyName;
    global List<usf.MetadataService.StrategyNode> strategyNode;
    global RecommendationStrategy() {

    }
}
global class RecordType extends usf.MetadataService.Metadata {
    global Boolean active;
    global String businessProcess;
    global String compactLayoutAssignment;
    global String description;
    global String fullName;
    global String label;
    global List<usf.MetadataService.RecordTypePicklistValue> picklistValues;
    global String type;
    global RecordType() {

    }
}
global class RecordTypePicklistValue {
    global String picklist;
    global List<usf.MetadataService.PicklistValue> values;
    global RecordTypePicklistValue() {

    }
}
global class RecordTypeTranslation {
    global String description;
    global String label;
    global String name;
    global RecordTypeTranslation() {

    }
}
global class RelatedContent {
    global List<usf.MetadataService.RelatedContentItem> relatedContentItems;
    global RelatedContent() {

    }
}
global class RelatedContentItem {
    global usf.MetadataService.LayoutItem layoutItem;
    global RelatedContentItem() {

    }
}
global class RelatedList {
    global Boolean hideOnDetail;
    global String name;
    global RelatedList() {

    }
}
global class RelatedListItem {
    global List<String> customButtons;
    global List<String> excludeButtons;
    global List<String> fields;
    global String relatedList;
    global String sortField;
    global String sortOrder;
    global RelatedListItem() {

    }
}
global class RemoteSiteSetting extends usf.MetadataService.Metadata {
    global String description;
    global Boolean disableProtocolSecurity;
    global String fullName;
    global Boolean isActive;
    global String type;
    global String url;
    global RemoteSiteSetting() {

    }
}
global class Report extends usf.MetadataService.Metadata {
    global List<usf.MetadataService.ReportAggregate> aggregates;
    global List<usf.MetadataService.Report> block;
    global usf.MetadataService.ReportBlockInfo blockInfo;
    global List<usf.MetadataService.ReportBucketField> buckets;
    global usf.MetadataService.ReportChart chart;
    global List<usf.MetadataService.ReportColorRange> colorRanges;
    global List<usf.MetadataService.ReportColumn> columns;
    global List<usf.MetadataService.ReportCrossFilter> crossFilters;
    global String currency_x;
    global List<usf.MetadataService.ReportDataCategoryFilter> dataCategoryFilters;
    global String description;
    global String division;
    global usf.MetadataService.ReportFilter filter;
    global String folderName;
    global String format;
    global String fullName;
    global List<usf.MetadataService.ReportGrouping> groupingsAcross;
    global List<usf.MetadataService.ReportGrouping> groupingsDown;
    global usf.MetadataService.ReportHistoricalSelector historicalSelector;
    global String name;
    global Integer numSubscriptions;
    global List<usf.MetadataService.ReportParam> params;
    global String reportType;
    global String roleHierarchyFilter;
    global Integer rowLimit;
    global String scope;
    global Boolean showCurrentDate;
    global Boolean showDetails;
    global String sortColumn;
    global String sortOrder;
    global String territoryHierarchyFilter;
    global usf.MetadataService.ReportTimeFrameFilter timeFrameFilter;
    global String type;
    global String userFilter;
    global Report() {

    }
}
global class ReportAggregate {
    global String acrossGroupingContext;
    global String calculatedFormula;
    global String datatype;
    global String description;
    global String developerName;
    global String downGroupingContext;
    global Boolean isActive;
    global Boolean isCrossBlock;
    global String masterLabel;
    global String reportType;
    global Integer scale;
    global ReportAggregate() {

    }
}
global class ReportAggregateReference {
    global String aggregate;
    global ReportAggregateReference() {

    }
}
global class ReportBlockInfo {
    global List<usf.MetadataService.ReportAggregateReference> aggregateReferences;
    global String blockId;
    global String joinTable;
    global ReportBlockInfo() {

    }
}
global class ReportBucketField {
    global String bucketType;
    global String developerName;
    global String masterLabel;
    global String nullTreatment;
    global String otherBucketLabel;
    global String sourceColumnName;
    global Boolean useOther;
    global List<usf.MetadataService.ReportBucketFieldValue> values;
    global ReportBucketField() {

    }
}
global class ReportBucketFieldSourceValue {
    global String from_x;
    global String sourceValue;
    global String to;
    global ReportBucketFieldSourceValue() {

    }
}
global class ReportBucketFieldValue {
    global List<usf.MetadataService.ReportBucketFieldSourceValue> sourceValues;
    global String value;
    global ReportBucketFieldValue() {

    }
}
global class ReportChart {
    global String backgroundColor1;
    global String backgroundColor2;
    global String backgroundFadeDir;
    global List<usf.MetadataService.ChartSummary> chartSummaries;
    global String chartType;
    global Boolean enableHoverLabels;
    global Boolean expandOthers;
    global String groupingColumn;
    global String legendPosition;
    global String location;
    global String secondaryGroupingColumn;
    global Boolean showAxisLabels;
    global Boolean showPercentage;
    global Boolean showTotal;
    global Boolean showValues;
    global String size;
    global Double summaryAxisManualRangeEnd;
    global Double summaryAxisManualRangeStart;
    global String summaryAxisRange;
    global String textColor;
    global Integer textSize;
    global String title;
    global String titleColor;
    global Integer titleSize;
    global ReportChart() {

    }
}
global class ReportChartComponentLayoutItem {
    global Boolean cacheData;
    global String contextFilterableField;
    global String error;
    global Boolean hideOnError;
    global Boolean includeContext;
    global String reportName;
    global Boolean showTitle;
    global String size;
    global ReportChartComponentLayoutItem() {

    }
}
global class ReportColorRange {
    global String aggregate;
    global String columnName;
    global Double highBreakpoint;
    global String highColor;
    global Double lowBreakpoint;
    global String lowColor;
    global String midColor;
    global ReportColorRange() {

    }
}
global class ReportColumn {
    global List<String> aggregateTypes;
    global String field;
    global Boolean reverseColors;
    global Boolean showChanges;
    global ReportColumn() {

    }
}
global class ReportCrossFilter {
    global List<usf.MetadataService.ReportFilterItem> criteriaItems;
    global String operation;
    global String primaryTableColumn;
    global String relatedTable;
    global String relatedTableJoinColumn;
    global ReportCrossFilter() {

    }
}
global class ReportDataCategoryFilter {
    global String dataCategory;
    global String dataCategoryGroup;
    global String operator;
    global ReportDataCategoryFilter() {

    }
}
global class ReportFilter {
    global String booleanFilter;
    global List<usf.MetadataService.ReportFilterItem> criteriaItems;
    global String language;
    global ReportFilter() {

    }
}
global class ReportFilterItem {
    global String column;
    global Boolean columnToColumn;
    global Boolean isUnlocked;
    global String operator;
    global String snapshot;
    global String value;
    global ReportFilterItem() {

    }
}
global class ReportFolder extends usf.MetadataService.Folder {
    global String accessType;
    global List<usf.MetadataService.FolderShare> folderShares;
    global String fullName;
    global String globalFolderAccess;
    global String name;
    global usf.MetadataService.SharedTo sharedTo;
    global String type;
    global ReportFolder() {

    }
}
global class ReportGrouping {
    global String aggregateType;
    global String dateGranularity;
    global String field;
    global String sortByName;
    global String sortOrder;
    global String sortType;
    global ReportGrouping() {

    }
}
global class ReportHistoricalSelector {
    global List<String> snapshot;
    global ReportHistoricalSelector() {

    }
}
global class ReportLayoutSection {
    global List<usf.MetadataService.ReportTypeColumn> columns;
    global String masterLabel;
    global ReportLayoutSection() {

    }
}
global class ReportParam {
    global String name;
    global String value;
    global ReportParam() {

    }
}
global class ReportTimeFrameFilter {
    global String dateColumn;
    global Date endDate;
    global String interval;
    global Date startDate;
    global ReportTimeFrameFilter() {

    }
}
global class ReportType extends usf.MetadataService.Metadata {
    global Boolean autogenerated;
    global String baseObject;
    global String category;
    global Boolean deployed;
    global String description;
    global String fullName;
    global usf.MetadataService.ObjectRelationship join_x;
    global String label;
    global List<usf.MetadataService.ReportLayoutSection> sections;
    global String type;
    global ReportType() {

    }
}
global class ReportTypeColumn {
    global Boolean checkedByDefault;
    global String displayNameOverride;
    global String field;
    global String table;
    global ReportTypeColumn() {

    }
}
global class ReportTypeColumnTranslation {
    global String label;
    global String name;
    global ReportTypeColumnTranslation() {

    }
}
global class ReportTypeSectionTranslation {
    global List<usf.MetadataService.ReportTypeColumnTranslation> columns;
    global String label;
    global String name;
    global ReportTypeSectionTranslation() {

    }
}
global class ReportTypeTranslation {
    global String description;
    global String label;
    global String name;
    global List<usf.MetadataService.ReportTypeSectionTranslation> sections;
    global ReportTypeTranslation() {

    }
}
global class ReputationBranding {
    global String smallImage;
    global ReputationBranding() {

    }
}
global class ReputationLevel {
    global usf.MetadataService.ReputationBranding branding;
    global String label;
    global Double lowerThreshold;
    global ReputationLevel() {

    }
}
global class ReputationLevelDefinitions {
    global List<usf.MetadataService.ReputationLevel> level;
    global ReputationLevelDefinitions() {

    }
}
global class ReputationLevels {
    global List<usf.MetadataService.ChatterAnswersReputationLevel> chatterAnswersReputationLevels;
    global List<usf.MetadataService.IdeaReputationLevel> ideaReputationLevels;
    global ReputationLevels() {

    }
}
global class ReputationPointsRule {
    global String eventType;
    global Integer points;
    global ReputationPointsRule() {

    }
}
global class ReputationPointsRules {
    global List<usf.MetadataService.ReputationPointsRule> pointsRule;
    global ReputationPointsRules() {

    }
}
global class RetrieveMessage {
    global String fileName;
    global String problem;
    global RetrieveMessage() {

    }
}
global class RetrieveRequest {
    global Double apiVersion;
    global List<String> packageNames;
    global Boolean singlePackage;
    global List<String> specificFiles;
    global usf.MetadataService.Package_x unpackaged;
    global RetrieveRequest() {

    }
}
global class RetrieveResult {
    global Boolean done;
    global String errorMessage;
    global String errorStatusCode;
    global List<usf.MetadataService.FileProperties> fileProperties;
    global String id;
    global List<usf.MetadataService.RetrieveMessage> messages;
    global String status;
    global Boolean success;
    global String zipFile;
    global RetrieveResult() {

    }
}
global class Role {
    global String parentRole;
    global Role() {

    }
}
global class RoleAndSubordinates {
    global List<String> roleAndSubordinate;
    global RoleAndSubordinates() {

    }
}
global class RoleAndSubordinatesInternal {
    global List<String> roleAndSubordinateInternal;
    global RoleAndSubordinatesInternal() {

    }
}
global class RoleOrTerritory extends usf.MetadataService.Metadata {
    global String caseAccessLevel;
    global String contactAccessLevel;
    global String description;
    global String fullName;
    global Boolean mayForecastManagerShare;
    global String name;
    global String opportunityAccessLevel;
    global String type;
    global RoleOrTerritory() {

    }
}
global class Roles {
    global List<String> role;
    global Roles() {

    }
}
global class RuleEntry {
    global String assignedTo;
    global String assignedToType;
    global String booleanFilter;
    global String businessHours;
    global String businessHoursSource;
    global List<usf.MetadataService.FilterItem> criteriaItems;
    global Boolean disableEscalationWhenModified;
    global List<usf.MetadataService.EscalationAction> escalationAction;
    global String escalationStartTime;
    global String formula;
    global Boolean notifyCcRecipients;
    global Boolean overrideExistingTeams;
    global String replyToEmail;
    global String senderEmail;
    global String senderName;
    global List<String> team;
    global String template;
    global RuleEntry() {

    }
}
global class RunTestFailure {
    global String id;
    global String message;
    global String methodName;
    global String name;
    global String namespace;
    global String packageName;
    global Boolean seeAllData;
    global String stackTrace;
    global Double time_x;
    global String type_x;
    global RunTestFailure() {

    }
}
global class RunTestSuccess {
    global String id;
    global String methodName;
    global String name;
    global String namespace;
    global Boolean seeAllData;
    global Double time_x;
    global RunTestSuccess() {

    }
}
global class RunTestsResult {
    global String apexLogId;
    global List<usf.MetadataService.CodeCoverageResult> codeCoverage;
    global List<usf.MetadataService.CodeCoverageWarning> codeCoverageWarnings;
    global List<usf.MetadataService.RunTestFailure> failures;
    global Integer numFailures;
    global Integer numTestsRun;
    global List<usf.MetadataService.RunTestSuccess> successes;
    global Double totalTime;
    global RunTestsResult() {

    }
}
global class SFDCMobileSettings {
    global Boolean enableMobileLite;
    global Boolean enableUserToDeviceLinking;
    global SFDCMobileSettings() {

    }
}
global class SamlSsoConfig extends usf.MetadataService.Metadata {
    global String attributeName;
    global String attributeNameIdFormat;
    global String decryptionCertificate;
    global String errorUrl;
    global String executionUserId;
    global String fullName;
    global String identityLocation;
    global String identityMapping;
    global String issuer;
    global String loginUrl;
    global String logoutUrl;
    global String name;
    global String oauthTokenEndpoint;
    global Boolean redirectBinding;
    global String requestSignatureMethod;
    global String requestSigningCertId;
    global String salesforceLoginUrl;
    global String samlEntityId;
    global String samlJitHandlerId;
    global String samlVersion;
    global String singleLogoutBinding;
    global String singleLogoutUrl;
    global String type;
    global Boolean userProvisioning;
    global String validationCert;
    global SamlSsoConfig() {

    }
}
global class SaveResult {
    global List<usf.MetadataService.Error> errors;
    global String fullName;
    global Boolean success;
    global SaveResult() {

    }
}
global class ScheduledRecommendation {
    global List<usf.MetadataService.ScheduledRecommendationDetail> scheduledRecommendationDetails;
    global ScheduledRecommendation() {

    }
}
global class ScheduledRecommendationDetail {
    global String channel;
    global Boolean enabled;
    global Integer rank;
    global String recommendationAudience;
    global ScheduledRecommendationDetail() {

    }
}
global class Scontrol extends usf.MetadataService.MetadataWithContent {
    global String content;
    global String contentSource;
    global String description;
    global String encodingKey;
    global String fileContent;
    global String fileName;
    global String fullName;
    global String name;
    global Boolean supportsCaching;
    global String type;
    global Scontrol() {

    }
}
global class ScontrolTranslation {
    global String label;
    global String name;
    global ScontrolTranslation() {

    }
}
global class SearchLayouts {
    global List<String> customTabListAdditionalFields;
    global List<String> excludedStandardButtons;
    global List<String> listViewButtons;
    global List<String> lookupDialogsAdditionalFields;
    global List<String> lookupFilterFields;
    global List<String> lookupPhoneDialogsAdditionalFields;
    global List<String> searchFilterFields;
    global List<String> searchResultsAdditionalFields;
    global List<String> searchResultsCustomButtons;
    global SearchLayouts() {

    }
}
global class SearchSettings extends usf.MetadataService.Metadata {
    global Boolean documentContentSearchEnabled;
    global String fullName;
    global Boolean optimizeSearchForCJKEnabled;
    global Boolean recentlyViewedUsersForBlankLookupEnabled;
    global usf.MetadataService.SearchSettingsByObject searchSettingsByObject;
    global Boolean sidebarAutoCompleteEnabled;
    global Boolean sidebarDropDownListEnabled;
    global Boolean sidebarLimitToItemsIOwnCheckboxEnabled;
    global Boolean singleSearchResultShortcutEnabled;
    global Boolean spellCorrectKnowledgeSearchEnabled;
    global String type;
    global SearchSettings() {

    }
}
global class SearchSettingsByObject {
    global List<usf.MetadataService.ObjectSearchSetting> searchSettingsByObject;
    global SearchSettingsByObject() {

    }
}
global class SecuritySettings extends usf.MetadataService.Metadata {
    global String fullName;
    global usf.MetadataService.NetworkAccess networkAccess;
    global usf.MetadataService.PasswordPolicies passwordPolicies;
    global usf.MetadataService.SessionSettings sessionSettings;
    global String type;
    global SecuritySettings() {

    }
}
global class ServiceCloudConsoleConfig {
    global usf.MetadataService.AppComponentList componentList;
    global String detailPageRefreshMethod;
    global String footerColor;
    global String headerColor;
    global usf.MetadataService.KeyboardShortcuts keyboardShortcuts;
    global usf.MetadataService.ListPlacement listPlacement;
    global String listRefreshMethod;
    global usf.MetadataService.LiveAgentConfig liveAgentConfig;
    global String primaryTabColor;
    global List<usf.MetadataService.PushNotification> pushNotifications;
    global usf.MetadataService.TabLimitConfig tabLimitConfig;
    global List<String> whitelistedDomains;
    global ServiceCloudConsoleConfig() {

    }
}
global class SessionHeader_element {
    global String sessionId;
    global SessionHeader_element() {

    }
}
global class SessionSettings {
    global Boolean disableTimeoutWarning;
    global Boolean enableCacheAndAutocomplete;
    global Boolean enableClickjackNonsetupSFDC;
    global Boolean enableClickjackNonsetupUser;
    global Boolean enableClickjackNonsetupUserHeaderless;
    global Boolean enableClickjackSetup;
    global Boolean enableContentSniffingProtection;
    global Boolean enableCSPOnEmail;
    global Boolean enableCSRFOnGet;
    global Boolean enableCSRFOnPost;
    global Boolean enablePostForSessions;
    global Boolean enableSMSIdentity;
    global Boolean enableUpgradeInsecureRequests;
    global Boolean enableXssProtection;
    global Boolean enforceIpRangesEveryRequest;
    global Boolean forceLogoutOnSessionTimeout;
    global Boolean forceRelogin;
    global Boolean hstsOnForcecomSites;
    global Boolean identityConfirmationOnEmailChange;
    global Boolean identityConfirmationOnTwoFactorRegistrationEnabled;
    global Boolean lockSessionsToDomain;
    global Boolean lockSessionsToIp;
    global String logoutURL;
    global Boolean redirectionWarning;
    global Boolean referrerPolicy;
    global Boolean requireHttpOnly;
    global Boolean requireHttps;
    global Boolean securityCentralKillSession;
    global String sessionTimeout;
    global SessionSettings() {

    }
}
global class SharedTo {
    global String allCustomerPortalUsers;
    global String allInternalUsers;
    global String allPartnerUsers;
    global List<String> channelProgramGroup;
    global List<String> channelProgramGroups;
    global List<String> group_x;
    global List<String> groups;
    global List<String> managers;
    global List<String> managerSubordinates;
    global List<String> portalRole;
    global List<String> portalRoleAndSubordinates;
    global List<String> queue;
    global List<String> role;
    global List<String> roleAndSubordinates;
    global List<String> roleAndSubordinatesInternal;
    global List<String> roles;
    global List<String> rolesAndSubordinates;
    global List<String> territories;
    global List<String> territoriesAndSubordinates;
    global List<String> territory;
    global List<String> territoryAndSubordinates;
    global SharedTo() {

    }
}
global virtual class SharingBaseRule extends usf.MetadataService.Metadata {
    global String accessLevel;
    global usf.MetadataService.AccountSharingRuleSettings accountSettings;
    global String description;
    global String label;
    global usf.MetadataService.SharedTo sharedTo;
    global SharingBaseRule() {

    }
}
global class SharingCriteriaRule extends usf.MetadataService.SharingBaseRule {
    global String accessLevel;
    global usf.MetadataService.AccountSharingRuleSettings accountSettings;
    global String booleanFilter;
    global List<usf.MetadataService.FilterItem> criteriaItems;
    global String description;
    global String fullName;
    global String label;
    global usf.MetadataService.SharedTo sharedTo;
    global String type;
    global SharingCriteriaRule() {

    }
}
global class SharingOwnerRule extends usf.MetadataService.SharingBaseRule {
    global String accessLevel;
    global usf.MetadataService.AccountSharingRuleSettings accountSettings;
    global String description;
    global String fullName;
    global String label;
    global usf.MetadataService.SharedTo sharedFrom;
    global usf.MetadataService.SharedTo sharedTo;
    global String type;
    global SharingOwnerRule() {

    }
}
global class SharingReason extends usf.MetadataService.Metadata {
    global String fullName;
    global String label;
    global String type;
    global SharingReason() {

    }
}
global class SharingReasonTranslation {
    global String label;
    global String name;
    global SharingReasonTranslation() {

    }
}
global class SharingRecalculation {
    global String className;
    global SharingRecalculation() {

    }
}
global class SharingRules extends usf.MetadataService.Metadata {
    global String fullName;
    global List<usf.MetadataService.SharingCriteriaRule> sharingCriteriaRules;
    global List<usf.MetadataService.SharingOwnerRule> sharingOwnerRules;
    global List<usf.MetadataService.SharingTerritoryRule> sharingTerritoryRules;
    global String type;
    global SharingRules() {

    }
}
global class SharingSet extends usf.MetadataService.Metadata {
    global List<usf.MetadataService.AccessMapping> accessMappings;
    global String description;
    global String fullName;
    global String name;
    global List<String> profiles;
    global String type;
    global SharingSet() {

    }
}
global class SharingTerritoryRule extends usf.MetadataService.SharingBaseRule {
    global String accessLevel;
    global usf.MetadataService.AccountSharingRuleSettings accountSettings;
    global String description;
    global String fullName;
    global String label;
    global usf.MetadataService.SharedTo sharedTo;
    global String type;
    global SharingTerritoryRule() {

    }
}
global class SidebarComponent {
    global String componentType;
    global String createAction;
    global Boolean enableLinking;
    global Integer height;
    global String label;
    global String lookup;
    global String page_x;
    global List<usf.MetadataService.RelatedList> relatedLists;
    global String unit;
    global String updateAction;
    global Integer width;
    global SidebarComponent() {

    }
}
global class SiteDotCom extends usf.MetadataService.MetadataWithContent {
    global String content;
    global String fullName;
    global String label;
    global String siteType;
    global String type;
    global SiteDotCom() {

    }
}
global class SiteRedirectMapping {
    global String action;
    global Boolean isActive;
    global String source;
    global String target;
    global SiteRedirectMapping() {

    }
}
global class SiteWebAddress {
    global String certificate;
    global String domainName;
    global Boolean primary;
    global SiteWebAddress() {

    }
}
global class Skill extends usf.MetadataService.Metadata {
    global usf.MetadataService.SkillAssignments assignments;
    global String description;
    global String fullName;
    global String label;
    global String type;
    global Skill() {

    }
}
global class SkillAssignments {
    global usf.MetadataService.SkillProfileAssignments profiles;
    global usf.MetadataService.SkillUserAssignments users;
    global SkillAssignments() {

    }
}
global class SkillProfileAssignments {
    global List<String> profile;
    global SkillProfileAssignments() {

    }
}
global class SkillUserAssignments {
    global List<String> user_x;
    global SkillUserAssignments() {

    }
}
global class SocialCustomerServiceSettings extends usf.MetadataService.Metadata {
    global String caseSubjectOption;
    global String fullName;
    global String type;
    global SocialCustomerServiceSettings() {

    }
}
global class StandardFieldTranslation {
    global String label;
    global String name;
    global StandardFieldTranslation() {

    }
}
global class StandardValue extends usf.MetadataService.CustomValue {
    global Boolean allowEmail;
    global Boolean closed;
    global String color;
    global Boolean converted;
    global Boolean cssExposed;
    global Boolean default_x;
    global String description;
    global String forecastCategory;
    global String fullName;
    global String groupingString;
    global Boolean highPriority;
    global Boolean isActive;
    global String label;
    global Integer probability;
    global String reverseRole;
    global Boolean reviewed;
    global String type;
    global Boolean won;
    global StandardValue() {

    }
}
global class StandardValueSet extends usf.MetadataService.Metadata {
    global String fullName;
    global String groupingStringEnum;
    global Boolean sorted;
    global List<usf.MetadataService.StandardValue> standardValue;
    global String type;
    global StandardValueSet() {

    }
}
global class StandardValueSetTranslation {
    global List<usf.MetadataService.ValueTranslation> valueTranslation;
    global StandardValueSetTranslation() {

    }
}
global class State {
    global Boolean active;
    global String integrationValue;
    global String isoCode;
    global String label;
    global Boolean standard;
    global Boolean visible;
    global State() {

    }
}
global class StaticResource extends usf.MetadataService.MetadataWithContent {
    global String cacheControl;
    global String content;
    global String contentType;
    global String description;
    global String fullName;
    global String type;
    global StaticResource() {

    }
}
global class StrategyNode {
    global String definition;
    global String description;
    global String name;
    global String parentNode;
    global Integer type_x;
    global StrategyNode() {

    }
}
global class SubtabComponents {
    global List<usf.MetadataService.Container> containers;
    global SubtabComponents() {

    }
}
global class SummaryLayout {
    global String masterLabel;
    global Integer sizeX;
    global Integer sizeY;
    global Integer sizeZ;
    global List<usf.MetadataService.SummaryLayoutItem> summaryLayoutItems;
    global String summaryLayoutStyle;
    global SummaryLayout() {

    }
}
global class SummaryLayoutItem {
    global String customLink;
    global String field;
    global Integer posX;
    global Integer posY;
    global Integer posZ;
    global SummaryLayoutItem() {

    }
}
global class SupervisorAgentConfigSkills {
    global List<String> skill;
    global SupervisorAgentConfigSkills() {

    }
}
global class SynonymDictionary extends usf.MetadataService.Metadata {
    global String fullName;
    global List<usf.MetadataService.SynonymGroup> groups;
    global Boolean isProtected;
    global String label;
    global String type;
    global SynonymDictionary() {

    }
}
global class SynonymGroup {
    global List<String> languages;
    global List<String> terms;
    global SynonymGroup() {

    }
}
global class TabLimitConfig {
    global String maxNumberOfPrimaryTabs;
    global String maxNumberOfSubTabs;
    global TabLimitConfig() {

    }
}
global class Territory {
    global String accountAccessLevel;
    global String parentTerritory;
    global Territory() {

    }
}
global class Territory2 extends usf.MetadataService.Metadata {
    global String accountAccessLevel;
    global String caseAccessLevel;
    global String contactAccessLevel;
    global List<usf.MetadataService.FieldValue> customFields;
    global String description;
    global String fullName;
    global String name;
    global String opportunityAccessLevel;
    global String parentTerritory;
    global List<usf.MetadataService.Territory2RuleAssociation> ruleAssociations;
    global String territory2Type;
    global String type;
    global Territory2() {

    }
}
global class Territory2Model extends usf.MetadataService.Metadata {
    global List<usf.MetadataService.FieldValue> customFields;
    global String description;
    global String fullName;
    global String name;
    global String type;
    global Territory2Model() {

    }
}
global class Territory2Rule {
    global Boolean active;
    global String booleanFilter;
    global String name;
    global String objectType;
    global List<usf.MetadataService.Territory2RuleItem> ruleItems;
    global Territory2Rule() {

    }
}
global class Territory2RuleAssociation {
    global Boolean inherited;
    global String ruleName;
    global Territory2RuleAssociation() {

    }
}
global class Territory2RuleItem {
    global String field;
    global String operation;
    global String value;
    global Territory2RuleItem() {

    }
}
global class Territory2Settings extends usf.MetadataService.Metadata {
    global String defaultAccountAccessLevel;
    global String defaultCaseAccessLevel;
    global String defaultContactAccessLevel;
    global String defaultOpportunityAccessLevel;
    global String fullName;
    global usf.MetadataService.Territory2SettingsOpportunityFilter opportunityFilterSettings;
    global String type;
    global Territory2Settings() {

    }
}
global class Territory2SettingsOpportunityFilter {
    global String apexClassName;
    global Boolean enableFilter;
    global Boolean runOnCreate;
    global Territory2SettingsOpportunityFilter() {

    }
}
global class Territory2Type extends usf.MetadataService.Metadata {
    global String description;
    global String fullName;
    global String name;
    global Integer priority;
    global String type;
    global Territory2Type() {

    }
}
global class TopicsForObjects extends usf.MetadataService.Metadata {
    global Boolean enableTopics;
    global String entityApiName;
    global String fullName;
    global String type;
    global TopicsForObjects() {

    }
}
global class TouchMobileSettings {
    global Boolean enableTouchAppIPad;
    global Boolean enableTouchAppIPhone;
    global Boolean enableTouchBrowserIPad;
    global Boolean enableTouchIosPhone;
    global Boolean enableVisualforceInTouch;
    global TouchMobileSettings() {

    }
}
global class TransactionSecurityAction {
    global Boolean block;
    global Boolean endSession;
    global Boolean freezeUser;
    global List<usf.MetadataService.TransactionSecurityNotification> notifications;
    global Boolean twoFactorAuthentication;
    global TransactionSecurityAction() {

    }
}
global class TransactionSecurityNotification {
    global Boolean inApp;
    global Boolean sendEmail;
    global String user_x;
    global TransactionSecurityNotification() {

    }
}
global class TransactionSecurityPolicy {
    global usf.MetadataService.TransactionSecurityAction action;
    global Boolean active;
    global String apexClass;
    global String description;
    global String developerName;
    global String eventName;
    global String eventType;
    global String executionUser;
    global String flow;
    global String masterLabel;
    global String resourceName;
    global String type_x;
    global TransactionSecurityPolicy() {

    }
}
global class Translations extends usf.MetadataService.Metadata {
    global List<usf.MetadataService.CustomApplicationTranslation> customApplications;
    global List<usf.MetadataService.CustomDataTypeTranslation> customDataTypeTranslations;
    global List<usf.MetadataService.CustomLabelTranslation> customLabels;
    global List<usf.MetadataService.CustomPageWebLinkTranslation> customPageWebLinks;
    global List<usf.MetadataService.CustomTabTranslation> customTabs;
    global List<usf.MetadataService.FlowDefinitionTranslation> flowDefinitions;
    global String fullName;
    global List<usf.MetadataService.GlobalQuickActionTranslation> quickActions;
    global List<usf.MetadataService.ReportTypeTranslation> reportTypes;
    global List<usf.MetadataService.ScontrolTranslation> scontrols;
    global String type;
    global Translations() {

    }
}
global class UiFormulaCriterion {
    global String leftValue;
    global String operator;
    global String rightValue;
    global UiFormulaCriterion() {

    }
}
global class UiFormulaRule {
    global String booleanFilter;
    global List<usf.MetadataService.UiFormulaCriterion> criteria;
    global UiFormulaRule() {

    }
}
global class UiPlugin {
    global String description;
    global String extensionPointIdentifier;
    global Boolean isEnabled;
    global String language;
    global String masterLabel;
    global UiPlugin() {

    }
}
global class UpsertResult {
    global Boolean created;
    global List<usf.MetadataService.Error> errors;
    global String fullName;
    global Boolean success;
    global UpsertResult() {

    }
}
global class UserCriteria extends usf.MetadataService.Metadata {
    global Integer creationAgeInSeconds;
    global String description;
    global String fullName;
    global Integer lastChatterActivityAgeInSeconds;
    global String masterLabel;
    global List<String> profiles;
    global String type;
    global List<String> userTypes;
    global UserCriteria() {

    }
}
global class Users {
    global List<String> user_x;
    global Users() {

    }
}
global class ValidationRule extends usf.MetadataService.Metadata {
    global Boolean active;
    global String description;
    global String errorConditionFormula;
    global String errorDisplayField;
    global String errorMessage;
    global String fullName;
    global String type;
    global ValidationRule() {

    }
}
global class ValidationRuleTranslation {
    global String errorMessage;
    global String name;
    global ValidationRuleTranslation() {

    }
}
global class ValueSet {
    global String controllingField;
    global Boolean restricted;
    global usf.MetadataService.ValueSetValuesDefinition valueSetDefinition;
    global String valueSetName;
    global List<usf.MetadataService.ValueSettings> valueSettings;
    global ValueSet() {

    }
}
global class ValueSetValuesDefinition {
    global Boolean sorted;
    global List<usf.MetadataService.CustomValue> value;
    global ValueSetValuesDefinition() {

    }
}
global class ValueSettings {
    global List<String> controllingFieldValue;
    global String valueName;
    global ValueSettings() {

    }
}
global class ValueTranslation {
    global String masterLabel;
    global String translation;
    global ValueTranslation() {

    }
}
global class ValueTypeField {
    global List<usf.MetadataService.ValueTypeField> fields;
    global List<String> foreignKeyDomain;
    global Boolean isForeignKey;
    global Boolean isNameField;
    global Integer minOccurs;
    global String name;
    global List<usf.MetadataService.PicklistEntry> picklistValues;
    global String soapType;
    global Boolean valueRequired;
    global ValueTypeField() {

    }
}
global class VisualizationPlugin extends usf.MetadataService.Metadata {
    global String description;
    global String developerName;
    global String fullName;
    global String icon;
    global String masterLabel;
    global String type;
    global List<usf.MetadataService.VisualizationResource> visualizationResources;
    global List<usf.MetadataService.VisualizationType> visualizationTypes;
    global VisualizationPlugin() {

    }
}
global class VisualizationResource {
    global String description;
    global String file;
    global Integer rank;
    global String type_x;
    global VisualizationResource() {

    }
}
global class VisualizationType {
    global String description;
    global String developerName;
    global String icon;
    global String masterLabel;
    global String scriptBootstrapMethod;
    global VisualizationType() {

    }
}
global class WaveApplication extends usf.MetadataService.Metadata {
    global String assetIcon;
    global String description;
    global String folder;
    global String fullName;
    global String masterLabel;
    global List<usf.MetadataService.FolderShare> shares;
    global String templateOrigin;
    global String templateVersion;
    global String type;
    global WaveApplication() {

    }
}
global class WaveDashboard extends usf.MetadataService.MetadataWithContent {
    global String application;
    global String content;
    global String description;
    global String fullName;
    global String masterLabel;
    global String templateAssetSourceName;
    global String type;
    global WaveDashboard() {

    }
}
global class WaveDataflow extends usf.MetadataService.MetadataWithContent {
    global String content;
    global String dataflowType;
    global String description;
    global String fullName;
    global String masterLabel;
    global String type;
    global WaveDataflow() {

    }
}
global class WaveDataset extends usf.MetadataService.Metadata {
    global String application;
    global String description;
    global String fullName;
    global String masterLabel;
    global String templateAssetSourceName;
    global String type;
    global WaveDataset() {

    }
}
global class WaveLens extends usf.MetadataService.MetadataWithContent {
    global String application;
    global String content;
    global List<String> datasets;
    global String description;
    global String fullName;
    global String masterLabel;
    global String templateAssetSourceName;
    global String type;
    global String visualizationType;
    global WaveLens() {

    }
}
global class WaveRecipe {
    global String dataflow;
    global String masterLabel;
    global String securityPredicate;
    global String targetDatasetAlias;
    global WaveRecipe() {

    }
}
global class WaveTemplateBundle {
    global String assetIcon;
    global Double assetVersion;
    global String description;
    global String label;
    global String templateBadgeIcon;
    global String templateDetailIcon;
    global String templateType;
    global WaveTemplateBundle() {

    }
}
global class WaveXmd extends usf.MetadataService.Metadata {
    global String application;
    global String dataset;
    global String datasetConnector;
    global String datasetFullyQualifiedName;
    global List<usf.MetadataService.WaveXmdDate> dates;
    global List<usf.MetadataService.WaveXmdDimension> dimensions;
    global List<usf.MetadataService.WaveXmdMeasure> measures;
    global List<usf.MetadataService.WaveXmdOrganization> organizations;
    global String origin;
    global String type_x;
    global String waveVisualization;
    global WaveXmd() {

    }
}
global class WaveXmdDate {
    global String alias;
    global Boolean compact;
    global String dateFieldDay;
    global String dateFieldEpochDay;
    global String dateFieldEpochSecond;
    global String dateFieldFiscalMonth;
    global String dateFieldFiscalQuarter;
    global String dateFieldFiscalWeek;
    global String dateFieldFiscalYear;
    global String dateFieldFullYear;
    global String dateFieldHour;
    global String dateFieldMinute;
    global String dateFieldMonth;
    global String dateFieldQuarter;
    global String dateFieldSecond;
    global String dateFieldWeek;
    global String dateFieldYear;
    global String description;
    global Integer firstDayOfWeek;
    global Integer fiscalMonthOffset;
    global Boolean isYearEndFiscalYear;
    global String label;
    global Boolean showInExplorer;
    global Integer sortIndex;
    global WaveXmdDate() {

    }
}
global class WaveXmdDimension {
    global List<usf.MetadataService.WaveXmdDimensionCustomAction> customActions;
    global Boolean customActionsEnabled;
    global String dateFormat;
    global String description;
    global String field;
    global String fullyQualifiedName;
    global String imageTemplate;
    global Boolean isDerived;
    global Boolean isMultiValue;
    global String label;
    global String linkTemplate;
    global Boolean linkTemplateEnabled;
    global String linkTooltip;
    global List<usf.MetadataService.WaveXmdDimensionMember> members;
    global String origin;
    global List<usf.MetadataService.WaveXmdRecordDisplayLookup> recordDisplayFields;
    global String recordIdField;
    global String recordOrganizationIdField;
    global List<usf.MetadataService.WaveXmdDimensionSalesforceAction> salesforceActions;
    global Boolean salesforceActionsEnabled;
    global Integer showDetailsDefaultFieldIndex;
    global Boolean showInExplorer;
    global Integer sortIndex;
    global WaveXmdDimension() {

    }
}
global class WaveXmdDimensionCustomAction {
    global String customActionName;
    global Boolean enabled;
    global String icon;
    global String method;
    global Integer sortIndex;
    global String target;
    global String tooltip;
    global String url;
    global WaveXmdDimensionCustomAction() {

    }
}
global class WaveXmdDimensionMember {
    global String color;
    global String label;
    global String member;
    global Integer sortIndex;
    global WaveXmdDimensionMember() {

    }
}
global class WaveXmdDimensionSalesforceAction {
    global Boolean enabled;
    global String salesforceActionName;
    global Integer sortIndex;
    global WaveXmdDimensionSalesforceAction() {

    }
}
global class WaveXmdMeasure {
    global String dateFormat;
    global String description;
    global String field;
    global String formatCustomFormat;
    global Integer formatDecimalDigits;
    global Boolean formatIsNegativeParens;
    global String formatPrefix;
    global String formatSuffix;
    global String formatUnit;
    global Double formatUnitMultiplier;
    global String fullyQualifiedName;
    global Boolean isDerived;
    global String label;
    global String origin;
    global Integer showDetailsDefaultFieldIndex;
    global Boolean showInExplorer;
    global Integer sortIndex;
    global WaveXmdMeasure() {

    }
}
global class WaveXmdOrganization {
    global String instanceUrl;
    global String label;
    global String organizationIdentifier;
    global Integer sortIndex;
    global WaveXmdOrganization() {

    }
}
global class WaveXmdRecordDisplayLookup {
    global String recordDisplayField;
    global WaveXmdRecordDisplayLookup() {

    }
}
global class WebLink extends usf.MetadataService.Metadata {
    global String availability;
    global String description;
    global String displayType;
    global String encodingKey;
    global String fullName;
    global Boolean hasMenubar;
    global Boolean hasScrollbars;
    global Boolean hasToolbar;
    global Integer height;
    global Boolean isResizable;
    global String linkType;
    global String masterLabel;
    global String openType;
    global String page_x;
    global String position;
    global Boolean protected_x;
    global Boolean requireRowSelection;
    global String scontrol;
    global Boolean showsLocation;
    global Boolean showsStatus;
    global String type;
    global String url;
    global Integer width;
    global WebLink() {

    }
}
global class WebLinkTranslation {
    global String label;
    global String name;
    global WebLinkTranslation() {

    }
}
global class WebToCaseSettings {
    global String caseOrigin;
    global String defaultResponseTemplate;
    global Boolean enableWebToCase;
    global WebToCaseSettings() {

    }
}
global class WeightedSourceCategory {
    global String sourceCategoryApiName;
    global Double weight;
    global WeightedSourceCategory() {

    }
}
global class Workflow extends usf.MetadataService.Metadata {
    global List<usf.MetadataService.WorkflowAlert> alerts;
    global List<usf.MetadataService.WorkflowFieldUpdate> fieldUpdates;
    global List<usf.MetadataService.WorkflowFlowAction> flowActions;
    global String fullName;
    global List<usf.MetadataService.WorkflowKnowledgePublish> knowledgePublishes;
    global List<usf.MetadataService.WorkflowOutboundMessage> outboundMessages;
    global List<usf.MetadataService.WorkflowRule> rules;
    global List<usf.MetadataService.WorkflowSend> send;
    global List<usf.MetadataService.WorkflowTask> tasks;
    global String type;
    global Workflow() {

    }
}
global virtual class WorkflowAction extends usf.MetadataService.Metadata {
    global WorkflowAction() {

    }
}
global class WorkflowActionReference {
    global String name;
    global String type_x;
    global WorkflowActionReference() {

    }
}
global class WorkflowAlert extends usf.MetadataService.WorkflowAction {
    global List<String> ccEmails;
    global String description;
    global String fullName;
    global Boolean protected_x;
    global List<usf.MetadataService.WorkflowEmailRecipient> recipients;
    global String senderAddress;
    global String senderType;
    global String template;
    global String type;
    global WorkflowAlert() {

    }
}
global class WorkflowEmailRecipient {
    global String field;
    global String recipient;
    global String type_x;
    global WorkflowEmailRecipient() {

    }
}
global class WorkflowFieldUpdate extends usf.MetadataService.WorkflowAction {
    global String description;
    global String field;
    global String formula;
    global String fullName;
    global String literalValue;
    global String lookupValue;
    global String lookupValueType;
    global String name;
    global Boolean notifyAssignee;
    global String operation;
    global Boolean protected_x;
    global Boolean reevaluateOnChange;
    global String targetObject;
    global String type;
    global WorkflowFieldUpdate() {

    }
}
global class WorkflowFlowAction {
    global String description;
    global String flow;
    global List<usf.MetadataService.WorkflowFlowActionParameter> flowInputs;
    global String label;
    global String language;
    global Boolean protected_x;
    global WorkflowFlowAction() {

    }
}
global class WorkflowFlowActionParameter {
    global String name;
    global String value;
    global WorkflowFlowActionParameter() {

    }
}
global class WorkflowKnowledgePublish extends usf.MetadataService.WorkflowAction {
    global String action;
    global String description;
    global String fullName;
    global String label;
    global String language;
    global Boolean protected_x;
    global String type;
    global WorkflowKnowledgePublish() {

    }
}
global class WorkflowOutboundMessage extends usf.MetadataService.WorkflowAction {
    global Double apiVersion;
    global String description;
    global String endpointUrl;
    global List<String> fields;
    global String fullName;
    global Boolean includeSessionId;
    global String integrationUser;
    global String name;
    global Boolean protected_x;
    global String type;
    global Boolean useDeadLetterQueue;
    global WorkflowOutboundMessage() {

    }
}
global class WorkflowRule extends usf.MetadataService.Metadata {
    global List<usf.MetadataService.WorkflowActionReference> actions;
    global Boolean active;
    global String booleanFilter;
    global List<usf.MetadataService.FilterItem> criteriaItems;
    global String description;
    global String formula;
    global String fullName;
    global String triggerType;
    global String type;
    global List<usf.MetadataService.WorkflowTimeTrigger> workflowTimeTriggers;
    global WorkflowRule() {

    }
}
global class WorkflowSend extends usf.MetadataService.WorkflowAction {
    global String action;
    global String description;
    global String fullName;
    global String label;
    global String language;
    global Boolean protected_x;
    global String type;
    global WorkflowSend() {

    }
}
global class WorkflowTask extends usf.MetadataService.WorkflowAction {
    global String assignedTo;
    global String assignedToType;
    global String description;
    global Integer dueDateOffset;
    global String fullName;
    global Boolean notifyAssignee;
    global String offsetFromField;
    global String priority;
    global Boolean protected_x;
    global String status;
    global String subject;
    global String type;
    global WorkflowTask() {

    }
}
global class WorkflowTaskTranslation {
    global String description;
    global String name;
    global String subject;
    global WorkflowTaskTranslation() {

    }
}
global class WorkflowTimeTrigger {
    global List<usf.MetadataService.WorkflowActionReference> actions;
    global String offsetFromField;
    global String timeLength;
    global String workflowTimeTriggerUnit;
    global WorkflowTimeTrigger() {

    }
}
global class WorkspaceMapping {
    global String fieldName;
    global String tab;
    global WorkspaceMapping() {

    }
}
global class XOrgHub extends usf.MetadataService.Metadata {
    global String fullName;
    global String label;
    global Boolean lockSharedObjects;
    global List<String> permissionSets;
    global List<usf.MetadataService.XOrgHubSharedObject> sharedObjects;
    global String type;
    global XOrgHub() {

    }
}
global class XOrgHubSharedObject {
    global List<String> fields;
    global String name;
    global XOrgHubSharedObject() {

    }
}
global class cancelDeployResponse_element {
    global usf.MetadataService.CancelDeployResult result;
    global cancelDeployResponse_element() {

    }
}
global class cancelDeploy_element {
    global String String_x;
    global cancelDeploy_element() {

    }
}
global class checkDeployStatusResponse_element {
    global usf.MetadataService.DeployResult result;
    global checkDeployStatusResponse_element() {

    }
}
global class checkDeployStatus_element {
    global String asyncProcessId;
    global Boolean includeDetails;
    global checkDeployStatus_element() {

    }
}
global class checkRetrieveStatusResponse_element {
    global usf.MetadataService.RetrieveResult result;
    global checkRetrieveStatusResponse_element() {

    }
}
global class checkRetrieveStatus_element {
    global String asyncProcessId;
    global Boolean includeZip;
    global checkRetrieveStatus_element() {

    }
}
global class createMetadataResponse_element {
    global List<usf.MetadataService.SaveResult> result;
    global createMetadataResponse_element() {

    }
}
global class createMetadata_element {
    global List<usf.MetadataService.Metadata> metadata;
    global createMetadata_element() {

    }
}
global class deleteMetadataResponse_element {
    global List<usf.MetadataService.DeleteResult> result;
    global deleteMetadataResponse_element() {

    }
}
global class deleteMetadata_element {
    global List<String> fullNames;
    global String type_x;
    global deleteMetadata_element() {

    }
}
global class deployRecentValidationResponse_element {
    global String result;
    global deployRecentValidationResponse_element() {

    }
}
global class deployRecentValidation_element {
    global String validationId;
    global deployRecentValidation_element() {

    }
}
global class deployResponse_element {
    global usf.MetadataService.AsyncResult result;
    global deployResponse_element() {

    }
}
global class deploy_element {
    global usf.MetadataService.DeployOptions DeployOptions;
    global String ZipFile;
    global deploy_element() {

    }
}
global class describeMetadataResponse_element {
    global usf.MetadataService.DescribeMetadataResult result;
    global describeMetadataResponse_element() {

    }
}
global class describeMetadata_element {
    global Double asOfVersion;
    global describeMetadata_element() {

    }
}
global class describeValueTypeResponse_element {
    global usf.MetadataService.DescribeValueTypeResult result;
    global describeValueTypeResponse_element() {

    }
}
global class describeValueType_element {
    global String type_x;
    global describeValueType_element() {

    }
}
global class globalGroups {
    global List<String> globalGroup;
    global globalGroups() {

    }
}
global class listMetadataResponse_element {
    global List<usf.MetadataService.FileProperties> result;
    global listMetadataResponse_element() {

    }
}
global class listMetadata_element {
    global Double asOfVersion;
    global List<usf.MetadataService.ListMetadataQuery> queries;
    global listMetadata_element() {

    }
}
global class readAccountSettingsResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadAccountSettingsResult result;
    global readAccountSettingsResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readActionLinkGroupTemplateResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadActionLinkGroupTemplateResult result;
    global readActionLinkGroupTemplateResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readActivitiesSettingsResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadActivitiesSettingsResult result;
    global readActivitiesSettingsResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readAddressSettingsResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadAddressSettingsResult result;
    global readAddressSettingsResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readAnalyticSnapshotResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadAnalyticSnapshotResult result;
    global readAnalyticSnapshotResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readApexClassResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadApexClassResult result;
    global readApexClassResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readApexComponentResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadApexComponentResult result;
    global readApexComponentResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readApexPageResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadApexPageResult result;
    global readApexPageResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readApexTestSuiteResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadApexTestSuiteResult result;
    global readApexTestSuiteResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readApexTriggerResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadApexTriggerResult result;
    global readApexTriggerResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readAppMenuResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadAppMenuResult result;
    global readAppMenuResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readApprovalProcessResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadApprovalProcessResult result;
    global readApprovalProcessResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readAssignmentRuleResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadAssignmentRuleResult result;
    global readAssignmentRuleResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readAssignmentRulesResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadAssignmentRulesResult result;
    global readAssignmentRulesResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readAuraDefinitionBundleResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadAuraDefinitionBundleResult result;
    global readAuraDefinitionBundleResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readAuthProviderResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadAuthProviderResult result;
    global readAuthProviderResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readAutoResponseRuleResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadAutoResponseRuleResult result;
    global readAutoResponseRuleResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readAutoResponseRulesResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadAutoResponseRulesResult result;
    global readAutoResponseRulesResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readBrandingSetResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadBrandingSetResult result;
    global readBrandingSetResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readBusinessHoursEntryResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadBusinessHoursEntryResult result;
    global readBusinessHoursEntryResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readBusinessHoursSettingsResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadBusinessHoursSettingsResult result;
    global readBusinessHoursSettingsResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readBusinessProcessResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadBusinessProcessResult result;
    global readBusinessProcessResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readCallCenterResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadCallCenterResult result;
    global readCallCenterResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readCaseSettingsResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadCaseSettingsResult result;
    global readCaseSettingsResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readCaseSubjectParticleResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadCaseSubjectParticleResult result;
    global readCaseSubjectParticleResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readCertificateResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadCertificateResult result;
    global readCertificateResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readChannelLayoutResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadChannelLayoutResult result;
    global readChannelLayoutResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readChatterAnswersSettingsResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadChatterAnswersSettingsResult result;
    global readChatterAnswersSettingsResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readCommunityResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadCommunityResult result;
    global readCommunityResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readCompactLayoutResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadCompactLayoutResult result;
    global readCompactLayoutResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readCompanySettingsResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadCompanySettingsResult result;
    global readCompanySettingsResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readConnectedAppResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadConnectedAppResult result;
    global readConnectedAppResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readContentAssetResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadContentAssetResult result;
    global readContentAssetResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readContractSettingsResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadContractSettingsResult result;
    global readContractSettingsResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readCorsWhitelistOriginResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadCorsWhitelistOriginResult result;
    global readCorsWhitelistOriginResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readCspTrustedSiteResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadCspTrustedSiteResult result;
    global readCspTrustedSiteResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readCustomApplicationComponentResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadCustomApplicationComponentResult result;
    global readCustomApplicationComponentResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readCustomApplicationResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadCustomApplicationResult result;
    global readCustomApplicationResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readCustomDataTypeResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadCustomDataTypeResult result;
    global readCustomDataTypeResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readCustomFieldResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadCustomFieldResult result;
    global readCustomFieldResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readCustomLabelResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadCustomLabelResult result;
    global readCustomLabelResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readCustomLabelsResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadCustomLabelsResult result;
    global readCustomLabelsResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readCustomMetadataResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadCustomMetadataResult result;
    global readCustomMetadataResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readCustomObjectResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadCustomObjectResult result;
    global readCustomObjectResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readCustomObjectTranslationResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadCustomObjectTranslationResult result;
    global readCustomObjectTranslationResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readCustomPageWebLinkResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadCustomPageWebLinkResult result;
    global readCustomPageWebLinkResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readCustomPermissionResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadCustomPermissionResult result;
    global readCustomPermissionResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readCustomSiteResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadCustomSiteResult result;
    global readCustomSiteResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readCustomTabResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadCustomTabResult result;
    global readCustomTabResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readCustomValueResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadCustomValueResult result;
    global readCustomValueResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readDashboardFolderResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadDashboardFolderResult result;
    global readDashboardFolderResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readDashboardResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadDashboardResult result;
    global readDashboardResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readDataCategoryGroupResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadDataCategoryGroupResult result;
    global readDataCategoryGroupResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readDelegateGroupResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadDelegateGroupResult result;
    global readDelegateGroupResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readDocumentFolderResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadDocumentFolderResult result;
    global readDocumentFolderResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readDocumentResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadDocumentResult result;
    global readDocumentResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readEclairGeoDataResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadEclairGeoDataResult result;
    global readEclairGeoDataResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readEmailFolderResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadEmailFolderResult result;
    global readEmailFolderResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readEmailServicesFunctionResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadEmailServicesFunctionResult result;
    global readEmailServicesFunctionResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readEmailTemplateResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadEmailTemplateResult result;
    global readEmailTemplateResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readEmbeddedServiceBrandingResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadEmbeddedServiceBrandingResult result;
    global readEmbeddedServiceBrandingResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readEmbeddedServiceConfigResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadEmbeddedServiceConfigResult result;
    global readEmbeddedServiceConfigResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readEmbeddedServiceLiveAgentResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadEmbeddedServiceLiveAgentResult result;
    global readEmbeddedServiceLiveAgentResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readEntitlementProcessResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadEntitlementProcessResult result;
    global readEntitlementProcessResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readEntitlementSettingsResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadEntitlementSettingsResult result;
    global readEntitlementSettingsResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readEntitlementTemplateResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadEntitlementTemplateResult result;
    global readEntitlementTemplateResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readEscalationRuleResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadEscalationRuleResult result;
    global readEscalationRuleResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readEscalationRulesResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadEscalationRulesResult result;
    global readEscalationRulesResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readEventDeliveryResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadEventDeliveryResult result;
    global readEventDeliveryResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readEventSubscriptionResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadEventSubscriptionResult result;
    global readEventSubscriptionResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readEventTypeResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadEventTypeResult result;
    global readEventTypeResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readExternalDataSourceResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadExternalDataSourceResult result;
    global readExternalDataSourceResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readExternalServiceRegistrationResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadExternalServiceRegistrationResult result;
    global readExternalServiceRegistrationResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readFieldSetResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadFieldSetResult result;
    global readFieldSetResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readFileUploadAndDownloadSecuritySettingsResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadFileUploadAndDownloadSecuritySettingsResult result;
    global readFileUploadAndDownloadSecuritySettingsResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readFlexiPageResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadFlexiPageResult result;
    global readFlexiPageResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readFlowResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadFlowResult result;
    global readFlowResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readFolderResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadFolderResult result;
    global readFolderResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readForecastingSettingsResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadForecastingSettingsResult result;
    global readForecastingSettingsResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readGlobalPicklistValueResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadGlobalPicklistValueResult result;
    global readGlobalPicklistValueResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readGlobalValueSetResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadGlobalValueSetResult result;
    global readGlobalValueSetResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readGroupResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadGroupResult result;
    global readGroupResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readHomePageComponentResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadHomePageComponentResult result;
    global readHomePageComponentResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readHomePageLayoutResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadHomePageLayoutResult result;
    global readHomePageLayoutResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readIdeasSettingsResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadIdeasSettingsResult result;
    global readIdeasSettingsResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readInstalledPackageResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadInstalledPackageResult result;
    global readInstalledPackageResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readKnowledgeSettingsResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadKnowledgeSettingsResult result;
    global readKnowledgeSettingsResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readLayoutResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadLayoutResult result;
    global readLayoutResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readLeadConvertSettingsResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadLeadConvertSettingsResult result;
    global readLeadConvertSettingsResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readLetterheadResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadLetterheadResult result;
    global readLetterheadResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readLicenseDefinitionResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadLicenseDefinitionResult result;
    global readLicenseDefinitionResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readListViewResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadListViewResult result;
    global readListViewResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readLiveAgentSettingsResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadLiveAgentSettingsResult result;
    global readLiveAgentSettingsResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readLiveChatAgentConfigResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadLiveChatAgentConfigResult result;
    global readLiveChatAgentConfigResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readLiveChatButtonResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadLiveChatButtonResult result;
    global readLiveChatButtonResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readLiveChatDeploymentResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadLiveChatDeploymentResult result;
    global readLiveChatDeploymentResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readManagedTopicsResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadManagedTopicsResult result;
    global readManagedTopicsResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readMarketingActionSettingsResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadMarketingActionSettingsResult result;
    global readMarketingActionSettingsResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readMarketingResourceTypeResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadMarketingResourceTypeResult result;
    global readMarketingResourceTypeResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readMatchingRuleResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadMatchingRuleResult result;
    global readMatchingRuleResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readMatchingRulesResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadMatchingRulesResult result;
    global readMatchingRulesResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readMetadataResponse_element {
    global usf.MetadataService.ReadResult result;
    global readMetadataResponse_element() {

    }
}
global class readMetadataWithContentResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadMetadataWithContentResult result;
    global readMetadataWithContentResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readMetadata_element {
    global List<String> fullNames;
    global String type_x;
    global readMetadata_element() {

    }
}
global class readMilestoneTypeResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadMilestoneTypeResult result;
    global readMilestoneTypeResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readMobileSettingsResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadMobileSettingsResult result;
    global readMobileSettingsResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readModerationRuleResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadModerationRuleResult result;
    global readModerationRuleResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readNameSettingsResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadNameSettingsResult result;
    global readNameSettingsResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readNamedCredentialResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadNamedCredentialResult result;
    global readNamedCredentialResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readNetworkBrandingResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadNetworkBrandingResult result;
    global readNetworkBrandingResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readNetworkResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadNetworkResult result;
    global readNetworkResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readOpportunitySettingsResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadOpportunitySettingsResult result;
    global readOpportunitySettingsResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readOrderSettingsResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadOrderSettingsResult result;
    global readOrderSettingsResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readOrgPreferenceSettingsResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadOrgPreferenceSettingsResult result;
    global readOrgPreferenceSettingsResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readPackageResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadPackageResult result;
    global readPackageResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readPermissionSetResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadPermissionSetResult result;
    global readPermissionSetResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readPersonalJourneySettingsResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadPersonalJourneySettingsResult result;
    global readPersonalJourneySettingsResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readPicklistValueResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadPicklistValueResult result;
    global readPicklistValueResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readPortalResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadPortalResult result;
    global readPortalResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readPostTemplateResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadPostTemplateResult result;
    global readPostTemplateResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readProductSettingsResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadProductSettingsResult result;
    global readProductSettingsResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readProfilePasswordPolicyResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadProfilePasswordPolicyResult result;
    global readProfilePasswordPolicyResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readProfileResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadProfileResult result;
    global readProfileResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readProfileSessionSettingResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadProfileSessionSettingResult result;
    global readProfileSessionSettingResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readQueueResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadQueueResult result;
    global readQueueResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readQuickActionResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadQuickActionResult result;
    global readQuickActionResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readQuoteSettingsResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadQuoteSettingsResult result;
    global readQuoteSettingsResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readRecordTypeResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadRecordTypeResult result;
    global readRecordTypeResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readRemoteSiteSettingResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadRemoteSiteSettingResult result;
    global readRemoteSiteSettingResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readReportFolderResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadReportFolderResult result;
    global readReportFolderResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readReportResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadReportResult result;
    global readReportResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readReportTypeResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadReportTypeResult result;
    global readReportTypeResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readRoleOrTerritoryResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadRoleOrTerritoryResult result;
    global readRoleOrTerritoryResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readSamlSsoConfigResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadSamlSsoConfigResult result;
    global readSamlSsoConfigResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readScontrolResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadScontrolResult result;
    global readScontrolResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readSearchSettingsResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadSearchSettingsResult result;
    global readSearchSettingsResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readSecuritySettingsResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadSecuritySettingsResult result;
    global readSecuritySettingsResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readSharingBaseRuleResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadSharingBaseRuleResult result;
    global readSharingBaseRuleResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readSharingCriteriaRuleResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadSharingCriteriaRuleResult result;
    global readSharingCriteriaRuleResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readSharingOwnerRuleResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadSharingOwnerRuleResult result;
    global readSharingOwnerRuleResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readSharingReasonResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadSharingReasonResult result;
    global readSharingReasonResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readSharingRulesResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadSharingRulesResult result;
    global readSharingRulesResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readSharingSetResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadSharingSetResult result;
    global readSharingSetResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readSharingTerritoryRuleResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadSharingTerritoryRuleResult result;
    global readSharingTerritoryRuleResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readSiteDotComResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadSiteDotComResult result;
    global readSiteDotComResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readSkillResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadSkillResult result;
    global readSkillResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readSocialCustomerServiceSettingsResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadSocialCustomerServiceSettingsResult result;
    global readSocialCustomerServiceSettingsResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readStandardValueResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadStandardValueResult result;
    global readStandardValueResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readStandardValueSetResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadStandardValueSetResult result;
    global readStandardValueSetResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readStaticResourceResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadStaticResourceResult result;
    global readStaticResourceResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readSynonymDictionaryResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadSynonymDictionaryResult result;
    global readSynonymDictionaryResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readTerritory2ModelResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadTerritory2ModelResult result;
    global readTerritory2ModelResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readTerritory2Response_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadTerritory2Result result;
    global readTerritory2Response_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readTerritory2SettingsResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadTerritory2SettingsResult result;
    global readTerritory2SettingsResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readTerritory2TypeResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadTerritory2TypeResult result;
    global readTerritory2TypeResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readTopicsForObjectsResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadTopicsForObjectsResult result;
    global readTopicsForObjectsResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readTranslationsResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadTranslationsResult result;
    global readTranslationsResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readUserCriteriaResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadUserCriteriaResult result;
    global readUserCriteriaResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readValidationRuleResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadValidationRuleResult result;
    global readValidationRuleResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readVisualizationPluginResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadVisualizationPluginResult result;
    global readVisualizationPluginResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readWaveApplicationResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadWaveApplicationResult result;
    global readWaveApplicationResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readWaveDashboardResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadWaveDashboardResult result;
    global readWaveDashboardResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readWaveDataflowResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadWaveDataflowResult result;
    global readWaveDataflowResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readWaveDatasetResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadWaveDatasetResult result;
    global readWaveDatasetResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readWaveLensResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadWaveLensResult result;
    global readWaveLensResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readWavexmdResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadWavexmdResult result;
    global readWavexmdResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readWebLinkResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadWebLinkResult result;
    global readWebLinkResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readWorkflowActionResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadWorkflowActionResult result;
    global readWorkflowActionResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readWorkflowAlertResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadWorkflowAlertResult result;
    global readWorkflowAlertResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readWorkflowFieldUpdateResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadWorkflowFieldUpdateResult result;
    global readWorkflowFieldUpdateResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readWorkflowKnowledgePublishResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadWorkflowKnowledgePublishResult result;
    global readWorkflowKnowledgePublishResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readWorkflowOutboundMessageResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadWorkflowOutboundMessageResult result;
    global readWorkflowOutboundMessageResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readWorkflowResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadWorkflowResult result;
    global readWorkflowResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readWorkflowRuleResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadWorkflowRuleResult result;
    global readWorkflowRuleResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readWorkflowSendResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadWorkflowSendResult result;
    global readWorkflowSendResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readWorkflowTaskResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadWorkflowTaskResult result;
    global readWorkflowTaskResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class readXOrgHubResponse_element implements usf.MetadataService.IReadResponseElement {
    global usf.MetadataService.ReadXOrgHubResult result;
    global readXOrgHubResponse_element() {

    }
    global usf.MetadataService.IReadResult getResult() {
        return null;
    }
}
global class renameMetadataResponse_element {
    global usf.MetadataService.SaveResult result;
    global renameMetadataResponse_element() {

    }
}
global class renameMetadata_element {
    global String newFullName;
    global String oldFullName;
    global String type_x;
    global renameMetadata_element() {

    }
}
global class retrieveResponse_element {
    global usf.MetadataService.AsyncResult result;
    global retrieveResponse_element() {

    }
}
global class retrieve_element {
    global usf.MetadataService.RetrieveRequest retrieveRequest;
    global retrieve_element() {

    }
}
global class updateMetadataResponse_element {
    global List<usf.MetadataService.SaveResult> result;
    global updateMetadataResponse_element() {

    }
}
global class updateMetadata_element {
    global List<usf.MetadataService.Metadata> metadata;
    global updateMetadata_element() {

    }
}
global class upsertMetadataResponse_element {
    global List<usf.MetadataService.UpsertResult> result;
    global upsertMetadataResponse_element() {

    }
}
global class upsertMetadata_element {
    global List<usf.MetadataService.Metadata> metadata;
    global upsertMetadata_element() {

    }
}
}
