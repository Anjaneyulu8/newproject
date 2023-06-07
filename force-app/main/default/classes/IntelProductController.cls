public class IntelProductController {
    @AuraEnabled(cacheable=true)
    public static List<IntelProduct__c> getProduct() {
        return [SELECT Id, Name, Image__c,Price__c FROM IntelProduct__c];
    }
}