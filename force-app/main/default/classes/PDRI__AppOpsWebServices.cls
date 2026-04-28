/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class AppOpsWebServices {
    global AppOpsWebServices() {

    }
global class ComparisonServiceRequestV1 {
    global String metadataFilterId;
    global String source;
    global String sourceType;
    global String target;
    global String targetType;
    global ComparisonServiceRequestV1() {

    }
}
global class Connection {
    global Boolean active;
    global String connectionType;
    global Boolean controlOrg;
    global String id;
    global String instanceUrl;
    global String name;
    global String orgId;
    global String orgType;
    global String target;
    global Connection() {

    }
}
global class Connections {
    global PDRI.AppOpsWebServices.Connection connection;
    global Connections() {

    }
}
global class DataDeploymentRequest {
    global String dataSetId;
    global String deploymentPlanId;
    global PDRI.AppOpsWebServices.EventControlOptions eventControlOptions;
    global PDRI.AppOpsWebServices.QueryFilter queryFilter;
    global Boolean simulation;
    global DataDeploymentRequest() {

    }
    global DataDeploymentRequest(String dataSetId) {

    }
}
global class DeploymentServiceRequest {
    global List<PDRI.AppOpsWebServices.DataDeploymentRequest> data;
    global String deploymentName;
    global String deploymentNotes;
    global List<PDRI.AppOpsWebServices.MetadataDeploymentRequest> metadata;
    global String queryFilter;
    global Map<String,String> queryFilters;
    global PDRI.AppOpsWebServices.DeploymentSource source;
    global DeploymentServiceRequest() {

    }
}
global class DeploymentServiceRequestV1 {
    global List<PDRI.AppOpsWebServices.DataDeploymentRequest> data;
    global String deploymentName;
    global String deploymentNotes;
    global String engagementId;
    global PDRI.AppOpsWebServices.MetadataDeploymentRequest metadata;
    global PDRI.AppOpsWebServices.DeploymentSource source;
    global DeploymentServiceRequestV1() {

    }
}
global class DeploymentSource {
    global String managedInstanceId;
    global DeploymentSource(String managedInstanceId) {

    }
}
global class EventControlOptions {
    global Boolean deactivateAll;
    global EventControlOptions(Boolean deactivateAll) {

    }
}
global class Job {
    global String id;
    global String jobId;
    global Job() {

    }
}
global class Jobs {
    global List<PDRI.AppOpsWebServices.Job> jobs;
    global Jobs() {

    }
}
global class ManagedInstance {
    global String connectionId;
    global Boolean controlInstance;
    global String id;
    global String instanceType;
    global String platformInstanceId;
    global ManagedInstance() {

    }
}
global class ManagedInstances {
    global List<PDRI.AppOpsWebServices.ManagedInstance> instances;
    global ManagedInstances() {

    }
}
global class MetadataComponentDeploymentRequest {
    global String componentId;
    @Deprecated
    global String componentName;
    global MetadataComponentDeploymentRequest(String componentId) {

    }
}
global class MetadataDeploymentRequest {
    global String compareJobId;
    global List<PDRI.AppOpsWebServices.MetadataComponentDeploymentRequest> components;
    @Deprecated
    global List<PDRI.AppOpsWebServices.MetadataComponentDeploymentRequest> metadataComponents;
    @Deprecated
    global String metadataType;
    @Deprecated
    global List<PDRI.AppOpsWebServices.MetadataTypeDeploymentRequest> metadataTypes;
    global String testLevel;
    global Boolean validation;
    global MetadataDeploymentRequest() {

    }
    global MetadataDeploymentRequest(List<PDRI.AppOpsWebServices.MetadataTypeDeploymentRequest> metadataTypes) {

    }
    global MetadataDeploymentRequest(String metadataType) {

    }
}
global class MetadataTypeDeploymentRequest {
    @Deprecated
    global List<PDRI.AppOpsWebServices.MetadataComponentDeploymentRequest> metadataComponents;
    @Deprecated
    global String type;
    global MetadataTypeDeploymentRequest(String type) {

    }
}
global class QueryFilter {
    global String filter;
    global QueryFilter(String filter) {

    }
}
global class RefreshConnectionRequest {
    global Boolean active;
    global String id;
    global String instanceUrl;
    global String orgId;
    global String orgType;
    global String target;
    global RefreshConnectionRequest() {

    }
}
global class URLWhitelist {
    global List<String> connections;
    global URLWhitelist() {

    }
}
}
