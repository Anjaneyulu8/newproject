trigger appointmentcreated on Appointment__c (after insert)
{
List<Messaging.SingleEmailMessage> emails = new List<Messaging.SingleEmailMessage>();



for(Appointment__c dc :Trigger.new)
{
Messaging.CustomNotification notification = new Messaging.CustomNotification();
notification.setBody('Scheduled Appointment please chec the details of appointment');
notification.setTitle('appointment scheduled alert');
CustomNotificationType type = [SELECT Id FROM CustomNotificationType WHERE DeveloperName = 'doctornotication'];
notification.setNotificationTypeId(type.id);
notification.setTargetId(dc.Id); // target object id
notification.send(new Set<String> {dc.Doctor__c });

Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();



email.setToAddresses(new String[] {dc.Doctor__c});
email.setSubject('Scheduled Appointment ');
email.setPlainTextBody('https://popcornapps104-dev-ed.lightning.force.com/lightning/r/Appointment__c/'+dc.Id+'/view');
emails.add(email);





Messaging.sendEmail(emails);




}



}