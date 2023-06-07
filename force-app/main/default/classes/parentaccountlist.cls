public class parentaccountlist {
  @AuraEnabled(cacheable=true)
    public static list<Account> getdata(String str){
        String searchkey='%'+str+'%';
        return[SELECT ID,Name FROM Account WHERE Name LIKE:searchkey ];

    }

}