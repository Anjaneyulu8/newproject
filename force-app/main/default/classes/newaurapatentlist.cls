public class newaurapatentlist {
	@AuraEnabled
   public static List<Patient__c> getpatient() {
       return [SELECT Id,Name FROM Patient__c];
   }
    @AuraEnabled
    public static List<Patient__c> searchpatient(String searchkey){
        String var='%'+searchkey+'%';
        return [select Name from Patient__c where Name LIKE:var ];
    }
    
   
    @AuraEnabled
    public static Patient__c createPatient (Patient__c pat)
    {
        insert pat;
        return pat;
    }    
}