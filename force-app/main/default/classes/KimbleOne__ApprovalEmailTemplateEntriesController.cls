/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class ApprovalEmailTemplateEntriesController {
    global Map<Integer,KimbleOne.ApprovalEmailTemplateEntriesController.ActivityTimeCategoryName> ActivityTimeCategories {
        get;
    }
    global List<KimbleOne__ApprovalRequest__c> ApprovalRequests {
        get;
    }
    global String ApproverUserId {
        get;
        set;
    }
    global String ExpenseClaimId {
        get;
        set;
    }
    global List<KimbleOne__ExpenseItem__c> ExpenseClaims {
        get;
    }
    global List<KimbleOne__ForecastTimeEntry__c> ForecastTimeEntries {
        get;
    }
    global String ForecastTimesheetId {
        get;
        set;
    }
    global List<KimbleOne__ExpenseItem__c> InvoiceExpenseItems {
        get;
    }
    global String InvoiceId {
        get;
        set;
    }
    global List<KimbleOne__Milestone__c> InvoiceMilestones {
        get;
    }
    global List<KimbleOne__PeriodRevenue__c> InvoicePeriodRevenues {
        get;
    }
    global List<KimbleOne__RevenueAdjustment__c> InvoiceRevenueAdjustments {
        get;
    }
    global List<KimbleOne__TimeEntry__c> InvoiceTimeEntries {
        get;
    }
    global Boolean isPlainText {
        get;
        set;
    }
    global String style {
        get;
        set;
    }
    global KimbleOne__Timesheet__c Timesheet {
        get;
    }
    global String TimesheetId {
        get;
        set;
    }
    global ApprovalEmailTemplateEntriesController() {

    }
global class ActivityTimeCategoryName {
    global Boolean isSequenced {
        get;
        set;
    }
    global String Name {
        get;
        set;
    }
    global ActivityTimeCategoryName(String name, Boolean isSequence) {

    }
}
}
