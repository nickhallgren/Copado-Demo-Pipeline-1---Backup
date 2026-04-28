/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class ApprovalProcessService {
    global ApprovalProcessService() {

    }
    global static void ApproveApprovalRequest(Id objectId, String comment) {

    }
    global static List<KimbleOne.ApprovalProcessService.ApprovalItem> GetPendingApprovalItemsForApprover(Id approverUserId, String keyPrefixFilter) {
        return null;
    }
    global static void RejectApprovalRequest(Id objectId, String comment) {

    }
    global static void RequestApproval(String objectId) {

    }
    global static void RequestApproval(String objectId, String approvalComments) {

    }
global class ApprovalItem implements System.Comparable {
    global String APIName {
        get;
        set;
    }
    global String DisplayName {
        get;
        set;
    }
    global List<KimbleOne.CustomField> FieldList {
        get;
        set;
    }
    global Id ObjectId {
        get;
        set;
    }
    global String ObjectLink {
        get;
        set;
    }
    global ProcessInstanceHistory PendingStep {
        get;
        set;
    }
    global ProcessInstanceHistory SubmittedStep {
        get;
        set;
    }
    global String TypeName {
        get;
        set;
    }
    global ApprovalItem(Id objId, String pageUrl, String name, String typName, ProcessInstanceHistory sStep, ProcessInstanceHistory pStep, List<KimbleOne.CustomField> fList) {

    }
    global Integer compareTo(Object compareTo) {
        return null;
    }
}
}
