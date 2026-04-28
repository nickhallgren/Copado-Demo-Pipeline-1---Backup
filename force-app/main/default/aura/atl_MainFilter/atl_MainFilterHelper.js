({  
    // deprecated
    filterHelper: function(component, event, helper) {
        console.log('filter');
        let filteredResources;
        let allResources = component.get("v.allResources");
        let selectedStage = component.get("v.selectedStage");
        let selectedRole = component.get("v.selectedRole");
        let selectedTech = component.get("v.selectedTech");
        let toggleVal = component.get("v.toggleAll");
        if (toggleVal) {
            filteredResources = allResources.filter(function(item) {
                return item.atl_Technology__c.includes(selectedTech);
            });  
        } else {
            console.log('else');
            filteredResources = allResources.filter(function(item) {
                return item.atl_Stage__c.includes(selectedStage) && item.atl_Role__c.includes(selectedRole) && item.atl_Technology__c.includes(selectedTech);
            });
        }
        
        component.set("v.filteredResources", filteredResources);
        console.log(filteredResources);        
    }
})