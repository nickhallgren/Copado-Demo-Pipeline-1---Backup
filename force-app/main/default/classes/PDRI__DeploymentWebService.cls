/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
@RestResource(urlMapping='/dataset/deploy/*')
global class DeploymentWebService {
    global DeploymentWebService() {

    }
    @Deprecated
    @HttpGet
    global static PDRI.DeploymentWebService.DeploymentResult doGet() {
        return null;
    }
global class DeploymentResult {
    global String error;
    global String resultId;
    global List<String> resultIds;
    global DeploymentResult() {

    }
}
}
