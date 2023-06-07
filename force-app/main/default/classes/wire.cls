public with sharing class wire {
    @AuraEnabled(cacheable=true)
    public static List<account> getaccountlist(){
        return[SELECT ID,Name FROM account LIMIT 5];

    }

}