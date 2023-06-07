trigger eventEmail on Event_Attendee__c (after insert) {
        List<Messaging.SingleEmailMessage> emails = new List<Messaging.SingleEmailMessage>();   

    for(Event_Attendee__c newItem : trigger.new) {

        // Retrieve session name and time + speaker name and email address
        Event_Attendee__c att =
            [SELECT Attendee__r.Name,
             		Attendee__r.Email__c,
             		Attendee__r.Phone__c, 
             		Event__r.Name__c,
             Event__r.Start__c,
             Event__r.Location__r.Name,
          	Event__r.Location__r.Street__c,
             Event__r.Location__r.Postal_Code__c
             FROM Event_Attendee__c WHERE Id=:newItem.Id];

        // Send confirmation email if we know the speaker's email address
        if (att.Attendee__r.Email__c != null) {
            String address = att.Attendee__r.Email__c;
            String subject = 'Registration has been confirmed';
            String message = 'Dear ' + att.Attendee__r.Name +
                'has been registered with Phone No: ' +att.Attendee__r.Phone__c+' and Email id: '+att.Attendee__r.Email__c
                +'\nThanks for speaking at the conference!';
          
           Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();

            email.setToAddresses(new String[] {address});
    email.setSubject(subject);
    email.setPlainTextBody(message);
   emails.add(email);
    //Messaging.sendEmail(emails);
            String loct=att.Event__r.Location__r.Name+'/'+att.Event__r.Location__r.Street__c+'/'+att.Event__r.Location__r.Postal_Code__c;
            
              Messaging.SingleEmailMessage emaills = new Messaging.SingleEmailMessage();

            emaills.setToAddresses(new String[] {address});
    emaills.setSubject('Pass for the '+att.Event__r.Name__c);
    emaills.setPlainTextBody('Dear '+att.Attendee__r.Name+
                             ', \nThank you for registering for ' +att.Event__r.Name__c+ ' which will be Organized on ' + att.Event__r.Start__c+ '\n& will be held in https://www.google.com/maps/place/'+loct.deleteWhitespace() +' We are excited to have you, see you in the event.');
   emails.add(emaills);
    Messaging.sendEmail(emails);
        }
    }

}