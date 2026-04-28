({
  saveClonedOpp: function (component, action, opportunity, sourceOppId) {
    return new Promise(function (resolve, reject) {
      var saveAction = component.get(action);
      console.log("Setting params opportunity " + opportunity);
      console.log("sourceOppId " + sourceOppId);
      saveAction.setParams({
        sourceOppId: sourceOppId,
        opportunity: opportunity
      });
      saveAction.setCallback(this, function (response) {
        var state = response.getState();
        if (state === "SUCCESS") {
          resolve(response.getReturnValue());
        } else {
          reject(response.getError());
        }
      });
      $A.enqueueAction(saveAction);
    });
  }
});