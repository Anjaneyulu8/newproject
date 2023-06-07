public class doctorpage {
      public  list<Appointment__c> varr{get;set;}
   
   
    public doctorpage(){
        string variable=userinfo.getUserId();
   
         varr = [select Patient_Name__c,Doctor__c,illness_issue__c,Date_Time__c from Appointment__c where Doctor__c=:variable ];
    }
   

}