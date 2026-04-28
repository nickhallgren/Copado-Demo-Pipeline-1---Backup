({
    doInit: function(component, event, helper) {
        console.log('do init');
        let urlResourceType = window.location.pathname;
        // Get all resource records
        let getTemplatesGuides = component.get("c.getTemplatesGuides");
        getTemplatesGuides.setCallback(this, function(response) {
            console.log('in callback');
            let state = response.getState();
            if (state === "SUCCESS") {
                console.log('success');
                let templatesGuides = response.getReturnValue();
                component.set("v.allTGs", templatesGuides);
                console.log(component.get("v.allTGs"));
            } else {
                console.error(response.getError());
            }
        });
        $A.enqueueAction(getTemplatesGuides);
        
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
        
        // Get picklist values for Status
        let getStatusValues = component.get("c.getStatusValues");
        getStatusValues.setCallback(this, function(response) {
            let state = response.getState();
            if (state === "SUCCESS") { 
                let statuses = response.getReturnValue();
                component.set("v.statuses", statuses);
            } else {
                console.error(response.getError());
            }
        });
        $A.enqueueAction(getStatusValues);
        
        // Get picklist values for Owner
        let getOwnerValues = component.get("c.getOwnerValues");
        getOwnerValues.setCallback(this, function(response) {
            let state = response.getState();
            if (state === "SUCCESS") {
                let owners = response.getReturnValue();
                component.set("v.owners", owners);
            } else {
                console.error(response.getError());
            }
        });
        $A.enqueueAction(getOwnerValues);

        if (urlResourceType.includes('/s/advisory')) {
            component.set("v.techOrOffering", "Select Offering");
            component.set("v.isAdvisory", true);
            component.set("v.isAtgDelivery", false);
            component.set("v.isCognizantDelivery", false);
        } else {
            component.set("v.isAdvisory", false);
            if (urlResourceType.includes('/s/atg-delivery') || urlResourceType.includes('/s/cognizant-delivery')) {
                component.set("v.techOrOffering", "Select Technology");
                if (urlResourceType.includes('/s/atg-delivery')) {
                    component.set("v.isAtgDelivery", true);
                    component.set("v.isCognizantDelivery", false);
                } else {
                    component.set("v.isAtgDelivery", false);
                    component.set("v.isCognizantDelivery", true);
                }
            }
        }
    },    
    
    filterTGs: function(component, event, helper) {
        let urlResourceType = window.location.pathname;
        let filteredTGs;
        let allTGs = component.get("v.allTGs");
        let selectedStage = component.get("v.selectedStage");
        let selectedRole = component.get("v.selectedRole");
        let selectedTech = component.get("v.selectedTech");
        let selectedStatus = component.get("v.selectedStatus");
        let selectedOwner = component.get("v.selectedOwner");
        let allStages = (['All', ''].includes(selectedStage));
        let allRoles = (['All', ''].includes(selectedRole));
        let allStatuses = (['All', ''].includes(selectedStatus));
        let allOwners = (['All', ''].includes(selectedOwner));

        console.log('Selected Technology/Offering: ' + selectedTech);
        console.log('Selected Stage: ' + selectedStage);
        console.log('Selected Role: ' + selectedRole);
        console.log('Selected Status: ' + selectedStatus);
        console.log('Selected Owner: ' + selectedOwner);
        
        console.log('allStages: ' + allStages);
        console.log('allRoles: ' + allRoles);
        console.log('allStatuses: ' + allStatuses);
        console.log('allOwners: ' + allOwners);

        //debugger;
        filteredTGs = allTGs.filter(function(tg) {            
            if(tg.atl_Project_Type__c){
                if (tg.atl_Project_Type__c.includes('Advisory') && urlResourceType.includes('/s/advisory')) {
                    
                    return tg.atl_Advisory_Offering__c.includes(selectedTech) && 
                        (allStages || tg.atl_Advisory_Stage__c.includes(selectedStage)) && 
                        (allRoles || tg.atl_Advisory_Role__c.includes(selectedRole)) &&
                        (allStatuses || tg.atl_Status__c.includes(selectedStatus)) &&
                        (allOwners || tg.atl_owner__c.includes(selectedOwner)) 

                }  else if (tg.atl_Project_Type__c.includes('Delivery') && urlResourceType.includes('/s/atg-delivery')) {
                    
                    return tg.atl_Technology__c.includes(selectedTech) && 
                        (allStages || tg.atl_Stage__c.includes(selectedStage)) && 
                        (allRoles || tg.atl_Role__c.includes(selectedRole)) &&
                        (allStatuses || tg.atl_Status__c.includes(selectedStatus)) &&
                        (allOwners || tg.atl_owner__c.includes(selectedOwner)) 

                } else if (tg.atl_Project_Type__c.includes('Cognizant') && urlResourceType.includes('/s/cognizant-delivery')) {
                    
                        return tg.atl_Cognizant_Technology__c.includes(selectedTech) && 
                            (allStages || tg.atl_cognizant_stage__c.includes(selectedStage)) && 
                            (allRoles || tg.atl_Cognizant_Role__c.includes(selectedRole)) &&
                            (allStatuses || tg.atl_Status__c.includes(selectedStatus)) &&
                            (allOwners || tg.atl_owner__c.includes(selectedOwner)) 
                }
           }
            
        });
        
        component.set("v.filteredTGs", filteredTGs);
        // Setting URL each time too
        let url = component.get("v.commURL") + 'sfc/servlet.shepherd/document/download';
        filteredTGs.forEach(function(item) {
            if(item.atl_SalesforceFileId__c){
              url += '/' + item.atl_SalesforceFileId__c;  
            }
            
        });
        component.set("v.downloadAllURL", url);
        console.log(url);
    },
    
    doCheck: function(component, event, helper) {
        //let checkedId = e.target.getAttribute('id');
        var checkedId = event.getSource().getLocalId();
        console.log(checkedId);
        
    },
    
    downloadSelected: function(component, event, helper) {
        debugger;
        console.log('download selected clicked');
        let url = component.get("v.commURL") + 'sfc/servlet.shepherd/document/download';
        let checkboxes = component.find("atlCheckbox");
        
        console.log('checkboxes found');
        if (checkboxes && Array.isArray(checkboxes) && checkboxes.length) {        
            // The typical case where there are multiple checkboxes
            console.log('multiple checkboxes');
            checkboxes.forEach(function(box) {
                console.log(box.getElement());
                if (box.get("v.checked")) { // once again, not positive on this syntax
                    console.log('idk');
                    url += "/" + box.dataset.Id;
                }
            });
        } else if (checkboxes) { // Edge case where there's only 1
            console.log('else if');
            if (checkboxes.checked) { // once again, not positive on this syntax
                url += "/" + checkboxes.dataset.Id;
            }
        } else { // Somehow handle if there's none, maybe this won't ever happen
            alert('No templates or guides selected.');
        }
        console.log(url);
        //window.open(url, '_blank');
    },
    
    // The below function was made to be called on click, but I moved the URL construction to the filter method so that we don't need a click to construct it
    downloadAll: function(component, event, helper) {
        
        let url = component.get("v.commURL") + 'sfc/servlet.shepherd/document/download';
        let filteredTGs = component.get("v.filteredTGs");
        filteredTGs.forEach(function(item) {
            url += '/' + item.atl_SalesforceFileId__c;
        });
        component.set("v.downloadAllURL", url);
        //window.open(url, '_blank');
    },
})