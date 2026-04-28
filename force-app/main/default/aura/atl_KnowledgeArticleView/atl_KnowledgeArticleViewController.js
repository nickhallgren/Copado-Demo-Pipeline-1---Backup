({
    doInit: function(component, event, helper) {
        console.log('do init');
        // Get all resource records
        let getKnowledgeArticleDetails = component.get("c.getKnowledgeArticleDetails");
        getKnowledgeArticleDetails.setParams({ 
            recordId : component.get("v.recordId") 
        });
        getKnowledgeArticleDetails.setCallback(this, function(response) {
            console.log('in callback');
            let state = response.getState();
            if (state === "SUCCESS") {
                console.log('success');
                let KA = response.getReturnValue();
                component.set("v.KA", KA);                
                console.log(component.get("v.KA"));
                if (KA.atl_Technology__c.includes('Salesforce')) {
                    component.set("v.hasSalesforce", true);
                } else {
                    component.set("v.hasSalesforce", false);
                }
                
                component.set("v.domainString", KA.atl_Domain__c.replace(/;/g, ', '));
                component.set("v.techString", KA.atl_Technology__c.replace(/;/g, ', '));
                console.log('techstring: ' + component.get("v.techString"));
            } else {
                console.error(response.getError());
            }
        });
        $A.enqueueAction(getKnowledgeArticleDetails);
    },
    
})