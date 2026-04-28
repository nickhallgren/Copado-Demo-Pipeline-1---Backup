({
    doInit: function(component, event, helper) {
        console.log(window.location.pathname);
        let urlResourceType = window.location.pathname;
        // Get all resource records
        let getResources = component.get("c.getResources");
        getResources.setCallback(this, function(response) {
            let state = response.getState();
            if (state === "SUCCESS") {
               // debugger;
                let initData = response.getReturnValue();
                component.set("v.allResources", initData['resources']);
                // console.log('Resource Data: ' + JSON.stringify(initData['resources']));
                component.set("v.activityId", initData['activityId']);
                component.set("v.templateGuideId", initData['templateGuideId']);
                component.set("v.trainingId", initData['trainingId']);
            } else {
                console.error(response.getError());
            }
        });
        $A.enqueueAction(getResources);
        
        // Get picklist values for Stage
        let getStageValues = component.get("c.getStageValues");
        getStageValues.setParams({ resourceType : urlResourceType });
        getStageValues.setCallback(this, function(response) {
            let state = response.getState();
            if (state === "SUCCESS") {
                let stages = response.getReturnValue();
                component.set("v.stages", stages);
            } else {
                console.error(response.getError());
            }
        });
        $A.enqueueAction(getStageValues);
        
        // Get picklist values for Role
        let getRoleValues = component.get("c.getRoleValues");
        getRoleValues.setParams({ resourceType : urlResourceType });
        getRoleValues.setCallback(this, function(response) {
            let state = response.getState();
            if (state === "SUCCESS") {
                let roles = response.getReturnValue();
                component.set("v.roles", roles);
            } else {
                console.error(response.getError());
            }
        });
        $A.enqueueAction(getRoleValues);
        
        // Get picklist values for Technology
        let getTechValues = component.get("c.getTechValues");
        getTechValues.setParams({ resourceType : urlResourceType });
        getTechValues.setCallback(this, function(response) {
            let state = response.getState();
            if (state === "SUCCESS") {
                let techs = response.getReturnValue();
                component.set("v.techs", techs);
            } else {
                console.error(response.getError());
            }
        });
        $A.enqueueAction(getTechValues);

        if (urlResourceType.includes('/s/advisory')) {
            component.set("v.techOrOffering", "Select Offering");
        } else if (urlResourceType.includes('/s/atg-delivery') || urlResourceType.includes('/s/cognizant-delivery')) {
            component.set("v.techOrOffering", "Select Technology");
        }

        if (urlResourceType.includes('/s/advisory')) {
            component.set("v.advisoryOrDeliveryUrl", "Advisory");
        } else if (urlResourceType.includes('/s/atg-delivery') || urlResourceType.includes('/s/cognizant-delivery')) {
            component.set("v.advisoryOrDeliveryUrl", "Delivery");
        }
        /*else if (urlResourceType.includes('/s/atg-delivery')) {
            component.set("v.advisoryOrDeliveryUrl", "Delivery");
        }  else if (urlResourceType.includes('/s/cognizant-delivery')) {
            component.set("v.advisoryOrDeliveryUrl", "Cognizant");
        }*/

    },
    
    filterResources: function(component, event, helper) {
        component.set("v.show20", true);
        component.set("v.hasActivities", false);
        component.set("v.hasTemplates", false);
        component.set("v.hasGuides", false);
        component.set("v.hasTraining", false);
        
        let urlResourceType = window.location.pathname;
        let filteredResources = [];
        let filteredResourcesShort = [];
        let allResources = component.get("v.allResources");
        let selectedStage = component.get("v.selectedStage");
        let selectedRole = component.get("v.selectedRole");
        let selectedTech = component.get("v.selectedTech");
        let allStages = (['All', ''].includes(selectedStage));
        let allRoles = (['All', ''].includes(selectedRole));
        let activityCount = 0;
        let templateCount = 0;
        let trainingCount = 0;
        let guideCount = 0;

        console.log('Selected Technology/Offering: ' + selectedTech);
        console.log('Selected Stage: ' + selectedStage);
        console.log('Selected Role: ' + selectedRole);

        // filteredResources = allResources.filter(function(item) {
        //     return item.atl_Technology__c.includes(selectedTech) && 
        //         (allStages || item.atl_Stage__c.includes(selectedStage)) && 
        //         (allRoles || item.atl_Role__c.includes(selectedRole))
        // });

        filteredResources = allResources.filter(function(item) {
            // debugger;
            if (item.atl_Project_Type__c) {
                // debugger;
                if (item.atl_Project_Type__c.includes('Advisory') && urlResourceType.includes('/s/advisory')) {
                    
                    return item.atl_Advisory_Offering__c.includes(selectedTech) && 
                        (allStages || item.atl_Advisory_Stage__c.includes(selectedStage)) && 
                        (allRoles || item.atl_Advisory_Role__c.includes(selectedRole)
                    )
                    
                } else if (item.atl_Project_Type__c.includes('Delivery') && urlResourceType.includes('/s/atg-delivery')) {
                    
                        return item.atl_Technology__c.includes(selectedTech) && 
                            (allStages || item.atl_Stage__c.includes(selectedStage)) && 
                            (allRoles || item.atl_Role__c.includes(selectedRole))

                } else if (item.atl_Project_Type__c.includes('Cognizant') && urlResourceType.includes('/s/cognizant-delivery')) {

                        return item.atl_Cognizant_Technology__c.includes(selectedTech) &&
                            (allStages || item.atl_cognizant_stage__c.includes(selectedStage)) && 
                            (allRoles || item.atl_Cognizant_Role__c.includes(selectedRole))
                }
            }
            // debugger;
        });
        
        filteredResources.forEach(function(res) {
            if (res.atl_ResourceType__c == 'Activity') {
                component.set("v.hasActivities", true);
                if (activityCount < 14) {
                    filteredResourcesShort.push(res);
                    activityCount += 1;
                }
            }
            
            if (res.atl_ResourceType__c == 'Template') {
                component.set("v.hasTemplates", true);
                if (templateCount < 17) {
                    filteredResourcesShort.push(res);
                    templateCount += 1;
                }
            }
            
            if (res.atl_ResourceType__c == 'Guide') {
                component.set("v.hasGuides", true);
                if (guideCount < 17) {
                    filteredResourcesShort.push(res);
                    guideCount += 1;
                }
            }
            
            if (res.atl_ResourceType__c == 'Training') {
                component.set("v.hasTraining", true);
                if (trainingCount < 17) {
                    filteredResourcesShort.push(res);
                    trainingCount += 1;
                }
            }
        });
        
        component.set("v.filteredResources", filteredResources);
        component.set("v.filteredResourcesShort", filteredResourcesShort);
        component.set("v.shownResources", filteredResourcesShort);
        
        // This auto-populates the correct stage label AS LONG AS THE AURA:ATTRIBUTE HAS THE SAME NAME AS THE API NAME OF THE PICKLIST VALUE
        component.set("v.stageLabel", component.get("v." + component.get("v.selectedStage")));
    },
    
    showAll: function(component, event, helper) {
        component.set("v.show20", false);
        component.set("v.shownResources", component.get("v.filteredResources"));
    }
})