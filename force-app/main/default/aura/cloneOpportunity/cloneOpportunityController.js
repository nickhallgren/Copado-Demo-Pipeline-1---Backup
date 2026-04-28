({
  handleCancel: function () {
    $A.get("e.force:closeQuickAction").fire();
  },
  handleSubmit: function (component, event, helper) {
    let spinner = component.find("waitSpinner");
    $A.util.toggleClass(spinner, "slds-hide");
    event.preventDefault();
    const sourceOppId = component.get("v.recordId");
    const whichButton = event.getSource().getLocalId();
    const StageName = component.find("StageName").get("v.value");
    const CloseDate = component.find("CloseDate").get("v.value");
    const Amount = component.find("Amount").get("v.value");

    let fields = {
      StageName,
      CloseDate,
      Amount,
      Gross_Margin_Percent__c: 0,
      Synergy_Amount__c: 0
    };
    console.log("Value of fields", fields);
    helper
      .saveClonedOpp(
        component,
        "c.saveClonedOpportunity",
        JSON.stringify(fields),
        sourceOppId
      )
      .then(function (res) {
        console.log("Save response", res);
        let navEvent;
        if (whichButton === "SaveAndEdit") {
          navEvent = $A.get("e.force:editRecord");
        } else {
          navEvent = $A.get("e.force:navigateToSObject");
        }
        navEvent.setParams({
          recordId: res
        });
        $A.util.toggleClass(spinner, "slds-hide");
        navEvent.fire();
      })
      .catch(function (e) {
        let toastParams = {
          title: "Error",
          message: e[0].message,
          type: "error",
          duration: 10000
        };
        $A.util.toggleClass(spinner, "slds-hide");
        let toastEvent = $A.get("e.force:showToast");
        toastEvent.setParams(toastParams);
        toastEvent.fire();
      });
  }
});