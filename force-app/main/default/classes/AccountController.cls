public with sharing class AccountController {

  @AuraEnabled(cacheable=true)
  public static List<Patient__c> listpatients() {

      List<Patient__c>  acclist= [SELECT Name FROM Patient__c WITH SECURITY_ENFORCED];

  return acclist;

  }

}