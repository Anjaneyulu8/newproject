public class ListPaitnt {
  public  list<Patient__c> varr{get;set;}
    public Patient__c vad{get;set;}
    public String accVal{get;set;}
    public ListPaitnt(){
   
         varr = [select 	Name, Gender__c, Date_of_birth__c from Patient__c];
    }
    public void accSearchQuery()
    {
varr = Database.query('SELECT Name, Date_of_birth__c, Gender__c FROM Patient__c  WHERE Name LIKE \'%' + accVal + '%\'');
    }
}