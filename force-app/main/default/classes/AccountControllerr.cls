public class AccountControllerr {
    
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountList() {
        List<Account> accounts = [SELECT Id, Name, Industry, Type, BillingCity, BillingState, BillingCountry FROM Account];
        return accounts;
    }
}