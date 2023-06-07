trigger leadtrigger on Lead (before insert) {
    for (Lead lead : Trigger.new) {
        // Query for existing lead with the same email
        Lead existingLead = [SELECT Id FROM Lead WHERE Email = :lead.Email];
        if (existingLead != null) {
            // Create a new record in another object
            otherobject__c newRecord = new otherobject__c();
            newRecord.Name = existingLead.Id;
            insert newRecord;
        } else {
            // Create a new lead
            insert lead;
        }
    }
}