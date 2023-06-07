trigger Delete_record on Account (before Delete )
{
List<Messaging.SingleEmailMessage> emails = new List<Messaging.SingleEmailMessage>();



List<Deleted_Account_object__c> d =new List<    Deleted_Account_object__c>();
for(Account c: Trigger.old)
{
if(Trigger.IsDelete == true)
{
d.add(new   Deleted_Account_object__c(Name=c.Name));
}
Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();



email.setToAddresses(new String[] {'anjaneyulukorimi8@gmail.com'});
email.setSubject('The Account get Deleted');
email.setPlainTextBody('Hi Admin , \n The Deleted Account Details is :-\n\n Account Name: '+c.Name+'\nType: '+c.Type+'\n Rating : '+c.Rating+'\nAnnual Revenue :\b '+c.AnnualRevenue+ '\n\n Please Check Account \n\n\n Thanks');
emails.add(email);




Messaging.sendEmail(emails);

}
insert d;




}