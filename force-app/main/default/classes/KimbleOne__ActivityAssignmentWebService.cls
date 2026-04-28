/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class ActivityAssignmentWebService {
    global ActivityAssignmentWebService() {

    }
    webService static List<KimbleOne__Resource__c> GetActivityAssignmentsForResourcedActivity(String resourcedActivityId) {
        return null;
    }
    webService static KimbleOne.ActivityAssignmentWebService.Resource GetAssignmentsForResource(String resourceId) {
        return null;
    }
    webService static Decimal GetDefaultResourceCostRate(String resourceId, String unitType) {
        return null;
    }
    webService static String GetFormattedResourceCostRate(String resourceId, String unitType, String toCurrencyIsoCode) {
        return null;
    }
    webService static String GetFormattedResourceTargetRevenueRate(String resourceId, String unitType, String toCurrencyIsoCode) {
        return null;
    }
    webService static KimbleOne.ActivityAssignmentWebService.Resource GetMyAssignments() {
        return null;
    }
    webService static String GetResourceCalendarOverlay(String resourceId, String activityAssignmentId) {
        return null;
    }
    webService static String GetResourceCalendarUsageOverlay(String resourceId, String activityAssignmentId, String resourcedActivityId) {
        return null;
    }
    webService static Decimal GetResourceCostRate(String resourceId, String unitType, String toCurrencyIsoCode) {
        return null;
    }
    webService static KimbleOne.ActivityAssignmentWebService.Resource GetResourceEvents(String resourceId) {
        return null;
    }
    webService static List<KimbleOne.ActivityAssignmentWebService.Resource> GetResourceEventsWithAlerts(List<String> resourceIds) {
        return null;
    }
    webService static Decimal GetResourceTargetRevenueRate(String resourceId, String unitType, String toCurrencyIsoCode) {
        return null;
    }
    webService static List<KimbleOne__Resource__c> GetResourcesAndAssignmentsMatchingProfile(String activityAssignmentId) {
        return null;
    }
    webService static List<KimbleOne__Resource__c> GetUnavailableAssignmentsForResource(String resourceId) {
        return null;
    }
    webService static List<KimbleOne__ActivityAssignment__c> Reassign(String activityAssignmentId, String resourceId, String periodId) {
        return null;
    }
    webService static String UpdateActivityAssignmentUsageWithHandledException(String resourceId, String activityAssignmentId, List<String> periodUsage) {
        return null;
    }
    webService static void UpdateActivityAssignmentUsage(String resourceId, String activityAssignmentId, List<String> periodUsage) {

    }
    webService static void UpdateActivityPeriodAssignmentUsage(String activityAssignmentId, String periodId, String usagePattern, Date startDate, Date endDate) {

    }
global class EventMock {
    @WebService
    webService Boolean AlertInCalendar;
    @WebService
    webService Date EndDateTime;
    @WebService
    webService Date StartDateTime;
    @WebService
    webService String Subject;
    global EventMock() {

    }
}
global class Resource {
    @WebService
    webService List<KimbleOne__ForecastTimeEntry__c> ForecastTimeEntries;
    @WebService
    webService List<KimbleOne__ActivityAssignment__c> GroupAssignments;
    @WebService
    webService List<KimbleOne__ActivityPeriodAssignment__c> PeriodAssignments;
    @WebService
    webService List<Event> resourceEvents;
    @WebService
    webService KimbleOne__Resource__c TheResource;
    @WebService
    webService List<KimbleOne__TimeEntry__c> TimeEntries;
    global Resource() {

    }
}
}
