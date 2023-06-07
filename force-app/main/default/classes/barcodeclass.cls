public class barcodeclass {
@AuraEnabled
public static List<Candidate__c>searchlist(String str){
     String searchkey='%'+str+'%';
    List<Candidate__c> searchlist=[Select Id,Name FROM Candidate__c WHERE Name LIKE:searchkey];
    System.debug(searchlist);
    return searchlist;
}
}