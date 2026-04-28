public with sharing class CloneOpportunityController {
  private static void logException(Exception e) {
    System.debug(
      'Exception on line ' +
      e.getLineNumber() +
      ': ' +
      e.getMessage()
    );
  }

  @AuraEnabled
  public static String saveClonedOpportunity(
    String sourceOppId,
    String opportunity
  ) {
    String returnValue = null;
    try {
      List<String> cloneFields = new List<String>();
      List<String> allFields = new List<String>();
      Opportunity sourceOpp = [
        SELECT Id
        FROM Opportunity
        WHERE Id = :sourceOppId
      ];
      allFields.addAll(
        sourceOpp.getSObjectType().getDescribe().fields.getMap().keySet()
      );

      List<Schema.FieldSetMember> skipFieldMembers = sourceOpp.getSObjectType()
        .getDescribe()
        .FieldSets.getMap()
        .get('oppDoNotCloneFields')
        .getFields();

      List<String> skipFields = new List<String>();
      for (Schema.FieldSetMember field : skipFieldMembers) {
        skipFields.add(field.getFieldPath().toLowerCase());
      }

      // Remove fields we will not clone. Describe above converts to all lower, so we need to here.
      for (String field : allFields) {
        if (!skipFields.contains(field)) {
          cloneFields.add(field);
        }
      }

      String soql =
        'SELECT ' +
        String.join(cloneFields, ',') +
        ' FROM Opportunity WHERE Id = \'' +
        sourceOppId +
        '\' limit 1';
      Opportunity clone = Database.query(soql).deepclone(false, false, false);

      if (clone != null) {
        Opportunity newOpp = (Opportunity) JSON.deserialize(
          opportunity,
          Opportunity.class
        );
        for (String field : allFields) {
          if (newOpp.get(field) != null) {
            clone.put(field, newOpp.get(field));
          }
        }
        insert clone;
        returnValue = clone.Id;
      } else {
        throw new AuraHandledException('Unable to clone record.');
      }
    } catch (Exception e) {
      logException(e);
      throw new AuraHandledException(e.getMessage());
    }
    return returnValue;
  }
}