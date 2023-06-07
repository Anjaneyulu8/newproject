public with sharing class UserCredentials {
    @AuraEnabled
    public static LoginCreditinals__c  createLoginCredentials(String username, String email, String password) {
        LoginCreditinals__c lc = new LoginCreditinals__c();
        lc.Name = username;
        lc.UserName__c = email;
        lc.Password__c = password;
        insert lc;
        return lc;
    }

    @AuraEnabled
    public static String login(String username, String password) {
        String result = 'failure';
        List<LoginCreditinals__c> users = [SELECT UserName__c,Password__c FROM LoginCreditinals__c WHERE Username__c = :username LIMIT 1];
        if (users.size() > 0) {
            LoginCreditinals__c user = users[0];
            if (user.Password__c == password) {
                result = 'success';
            }
        }
        return result;
    }

    @AuraEnabled(cacheable=true)
    public static List<IntelProduct__c> getProducts() {
        return [SELECT Id, Name FROM IntelProduct__c ORDER BY Name];
    }

}