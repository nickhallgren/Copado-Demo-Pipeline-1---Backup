({
    doInit: function(component, event, helper) {
        console.log('do init');
        // Get all resource records
        let getKnowledgeArticles = component.get("c.getKnowledgeArticles");
        getKnowledgeArticles.setCallback(this, function(response) {
            console.log('in callback');
            let state = response.getState();
            if (state === "SUCCESS") {
                console.log('success');
                let KAs = response.getReturnValue();
                component.set("v.allKAs", KAs);
                console.log(component.get("v.allKAs"));
            } else {
                console.error(response.getError());
            }
        });
        $A.enqueueAction(getKnowledgeArticles);
        
        // Get picklist values for Technology
        let getTechValues = component.get("c.getTechValues");
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
        
        // Get picklist values for Domain
        let getDomainValues = component.get("c.getDomainValues");
        getDomainValues.setCallback(this, function(response) {
            let state = response.getState();
            if (state === "SUCCESS") { 
                let domains = response.getReturnValue();
                component.set("v.domains", domains);
            } else {
                console.error(response.getError());
            }
        });
        $A.enqueueAction(getDomainValues);
    },
    
    filterKAs: function(component, event, helper) {
        let filteredKAs;
        let allKAs = component.get("v.allKAs");
        let selectedTech = component.get("v.selectedTech");
        let selectedDomain = component.get("v.selectedDomain");
        let allDomains = (selectedDomain == 'All Domains');
        
        if (selectedTech == 'Salesforce') {
            filteredKAs = allKAs.filter(function(item) {
                return item.atl_Technology__c.includes(selectedTech) && (allDomains || item.atl_Domain__c.includes(selectedDomain))
            });
        } else {
            filteredKAs = allKAs.filter(function(item) {
                return item.atl_Technology__c.includes(selectedTech)
            });
        }
        
        
        component.set("v.filteredKAs", filteredKAs);
        console.log(filteredKAs);
    }
})