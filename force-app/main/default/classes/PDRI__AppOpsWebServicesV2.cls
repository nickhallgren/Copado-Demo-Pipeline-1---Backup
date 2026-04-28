/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class AppOpsWebServicesV2 {
    global AppOpsWebServicesV2() {

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
global class DataDeploymentRequest {
    global String dataSetId;
    global String deploymentPlanId;
    global PDRI.AppOpsWebServicesV2.EventControlOptions eventControlOptions;
    global PDRI.AppOpsWebServicesV2.QueryFilter queryFilter;
    global Boolean simulation;
    global DataDeploymentRequest() {

    }
    global DataDeploymentRequest(String dataSetId) {

    }
}
global class DeploymentServiceRequestV1 {
    global List<PDRI.AppOpsWebServicesV2.DataDeploymentRequest> data;
    global String deploymentName;
    global String deploymentNotes;
    global String engagementId;
    global PDRI.AppOpsWebServicesV2.MetadataDeploymentRequest metadata;
    global PDRI.AppOpsWebServicesV2.DeploymentSource source;
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
    global List<PDRI.AppOpsWebServicesV2.Job> jobs;
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
    global List<PDRI.AppOpsWebServicesV2.ManagedInstance> instances;
    global ManagedInstances() {

    }
}
global class MetadataComponentDeploymentRequest {
    global String componentId;
    global MetadataComponentDeploymentRequest(String componentId) {

    }
}
global class MetadataDeploymentRequest {
    global String compareJobId;
    global List<PDRI.AppOpsWebServicesV2.MetadataComponentDeploymentRequest> components;
    global String testLevel;
    global Boolean validation;
    global MetadataDeploymentRequest() {

    }
}
global class QueryFilter {
    global String filter;
    global QueryFilter(String filter) {

    }
}
}
