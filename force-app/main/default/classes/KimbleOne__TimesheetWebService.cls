/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class TimesheetWebService {
    global TimesheetWebService() {

    }
    webService static Decimal CalculateExpenseRevenueFromNetAmount(Decimal newNetAmt, String itemId) {
        return null;
    }
    webService static Boolean DeleteTimeEntries(List<String> timeEntryIds) {
        return null;
    }
    webService static List<KimbleOne.TimesheetWebService.ActivityExpenseCategory> GetActivityExpenseCategory(String activityId) {
        return null;
    }
    webService static List<KimbleOne.TimesheetWebService.ActivityAssignmentRate> GetActivityRateBand(String activityRateId) {
        return null;
    }
    webService static List<KimbleOne__ActivityTimeCategory__c> GetActivityTimeActivityCategories(String activity) {
        return null;
    }
    webService static String GetResourcedActivityUsage(String activityId) {
        return null;
    }
    webService static String GetTrackingTimePeriodFromDateStr(String sDate) {
        return null;
    }
    webService static Boolean SetActivateForecastActivities(String forcastIds, String resourceId) {
        return null;
    }
    webService static KimbleOne.ReferenceDataWebService.JSMessage SubmitAllTimeEntriesForResourceInPeriod(String trackingPeriodId, String resourceId) {
        return null;
    }
    webService static List<KimbleOne.TimesheetWebService.SubmitTimeErrorMessage> SubmitTimeEntries(List<KimbleOne__TimeEntry__c> timeEntrys, Id resourceId) {
        return null;
    }
global class ActivityAssignmentRate {
    @WebService
    webService Boolean EnterRevenueUnits;
    @WebService
    webService String Id;
    @WebService
    webService Double MaximumUsage;
    @WebService
    webService String ResourcedActivityUsageAllocationType;
    @WebService
    webService String UsageAllocationType;
    @WebService
    webService Double UsageFormat;
    @WebService
    webService String UsageUnitType;
    global ActivityAssignmentRate() {

    }
}
global class ActivityExpenseCategory {
    @WebService
    webService String CurrencyCd;
    @WebService
    webService String ExpenseType;
    @WebService
    webService String HasAttendees;
    @WebService
    webService String HasEndLocation;
    @WebService
    webService String HasStartLocation;
    @WebService
    webService String UnitType;
    global ActivityExpenseCategory() {

    }
}
global class SubmitTimeErrorMessage {
    webService String Id {
        get;
        set;
    }
    webService String Message {
        get;
        set;
    }
}
}
