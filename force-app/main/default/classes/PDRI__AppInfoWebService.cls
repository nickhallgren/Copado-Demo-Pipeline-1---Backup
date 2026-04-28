/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
@RestResource(urlMapping='/app/*')
global class AppInfoWebService {
    global AppInfoWebService() {

    }
    @HttpGet
    global static PDRI.AppInfoWebService.AppInfo doGet() {
        return null;
    }
global class AppInfo {
    @AuraEnabled
    global String appName;
    @AuraEnabled
    global String appNamespace;
    global String error;
    global String installedOrgId;
    global AppInfo() {

    }
}
}
