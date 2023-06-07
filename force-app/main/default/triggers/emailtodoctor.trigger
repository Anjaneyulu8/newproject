trigger emailtodoctor on Appointment__c (After insert) {
List<Messaging.SingleEmailMessage> emails = new List<Messaging.SingleEmailMessage>();
for(Appointment__c a:trigger.new){
if(a.illness_issue__c=='Critical')
{

List<Profile> userProfile = [select id from profile where Name='Sr.Doctor'];
for(User sysAdminUser :[Select id,LastName from user where ProfileID IN:userProfile]) {
Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
string body = 'Hi '+ sysAdminUser.LastName;
mail.setSubject('Test Subject');
// assign user
mail.setTargetObjectId(sysAdminUser.Id);
    mail.setPlainTextBody('assigned');
    mail.saveAsActivity = false;
    emails.add(mail);
    Messaging.sendEmail(emails);
}
}
}

}