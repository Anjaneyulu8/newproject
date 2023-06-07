trigger Appointmenttime on Appointment__c (before insert, before update)
{
if(Trigger.isInsert)
{
for(Appointment__c dc: trigger.new)
{
if(dc.Doctor__c != null && dc.Date_Time__c != null)
{
List<Appointment__c> acc=[select Id,Date_Time__c,Doctor__c from Appointment__c where Date_Time__c =:dc.Date_Time__c AND Doctor__c =:dc.Doctor__c];
System.debug(acc);
if(acc.size()>0)
{
System.debug('message');
dc.Date_Time__c.addError('The Time already Assigned to Doctor');

}
}

}
}
if(Trigger.isUpdate)
{

for(Appointment__c ac: Trigger.New)
{



getDate(ac);
}
}



public static void getDate(Appointment__c acc){
System.debug(acc);
List<Appointment__c> docApp=[select Id,	Date_Time__c,Doctor__c from Appointment__c WHERE id!=:acc.Id];

for(Appointment__c d:docApp){

if(acc.Date_Time__c == d.Date_Time__c && acc.Doctor__c==d.Doctor__c){
acc.Date_Time__c.addError('The Time already Assigned to particular Doctor');
}
}
}
}