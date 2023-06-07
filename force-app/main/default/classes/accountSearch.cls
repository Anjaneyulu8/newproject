public class accountSearch{
 
    public string accVal{get;set;}
    public list<account> accList{get;set;}
 

    public accountSearch(){
    // get list of Account
    accList = [select name,type,rating from Account];
    }
    

    public void accSearchQuery(){
    // search in Account Obj
    system.debug('-----------Account Searc Value-------'+ accVal);
              accList=Database.query('select name,type,rating from account where name LIKE\'%'+ accVal +'%\'');
    }
}