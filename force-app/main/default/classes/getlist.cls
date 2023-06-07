public class getlist {
    @AuraEnabled(cacheable=true)
public static list<Company__c>Companylist(){
    return[SELECT ID,Name FROM Company__c];
}
}