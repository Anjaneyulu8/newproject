public with sharing class dataretriveclass {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountList() {
        return [SELECT Id, Name, Industry, NumberOfEmployees FROM Account  LIMIT 10];
    }
}