public class Bacthableclass Implements Database.Batchable<Account>{
    public list<Account>Start(Database.BatchableContext BC){
        
        return[Select Id,Name from Account];
    }
    public void Execute(Database.BatchableContext BC,list<Account> aclist){
        list<Account> finallist=New List<Account>();
        For(Account varr:aclist){
            varr.Name='chetan';
            finallist.add(varr);
        }
       update finallist;
        System.debug(finallist);
    } 
     public void Finish(Database.BatchableContext BC)
    {
        
    }
}