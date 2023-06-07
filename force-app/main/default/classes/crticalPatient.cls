public class crticalPatient {
    public  list<Appointment__c> varr{get;set;}
    public String accVal{get;set;}
    public crticalPatient(){
   
         varr = [select illness_issue__c,   Patient_Name__c from Appointment__c where illness_issue__c=:'critical'];
    }
    

}