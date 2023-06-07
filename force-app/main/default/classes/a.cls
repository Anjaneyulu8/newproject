public class a{
    @AuraEnabled(cacheable=true)
    public static List<account> accountlist(String data){
        
        
        list<account>listt=[SELECT ID,Type FROM account
           WHERE Type=:data LIMIT 5];
        System.debug(listt);
          return listt;
        
        
    }
}