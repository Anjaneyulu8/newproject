public class Batchable2 Implements Database.Batchable<Contact>{
 
    public list<Contact>Start(Database.BatchableContext ab){
        list<Contact> abclist=[Select Id, Name From Contact];
            return abclist;
        
    }
    
    
    Public void Execute(Database.BatchableContext ab,List<Contact>conlist){
        list<Contact>finallist=New list<Contact>();
        for(Contact ca:conlist){
            ca.Title='Anji';
            finallist.add(ca);
            }
        update finallist;
    }
    
    
    
 public void Finish(Database.BatchableContext ab){
        
    }
}