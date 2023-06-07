public class Hrtask {
@AuraEnabled(cacheable=true)
public static List<Candidate__c>searchlist(String str){
     String searchkey='%'+str+'%';
    List<Candidate__c> searchlist=[Select Id,Name FROM Candidate__c WHERE Skills__c LIKE:searchkey];
    return searchlist;
}

@AuraEnabled
public static List<Candidate__c>insertround(list<Candidate__c> str){
    set<Id> strset=new set<Id>();
    for(Candidate__c r:str){
        strset.add(r.Id);
    }    
    System.debug('15'+strset);
    List<Candidate__c> searchlist=[Select Id,Name FROM Candidate__c  WHERE Id In :strset];
    System.debug('17 '+searchlist);
    
 list<Round1__c> roundlist=new list<Round1__c>();
for(Candidate__c rs:searchlist){
Round1__c rc=new Round1__c();
rc.Name=rs.Name;
roundlist.add(rc);
    } 
    insert roundlist;
    System.debug('msg'+roundList);

return searchlist;

}
}