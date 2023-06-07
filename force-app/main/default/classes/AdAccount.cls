public class AdAccount {
    public string VarName{get;set;}
    public list<Account> listName{get;set;}
    public Account ac{get;set;}
    public string v{get;set;}
    
    
    //constructor
    public AdAccount(){
        ac=new account();
        AccountList();
        
    }
    
    public void AccountList(){
        listName=[select name,type,rating,industry from Account];
        
        
    }
    
    
    public void SearchAccount(){
      ListName=Database.query('Select Name,type,rating from account where name LIKE \'%'+ VarName +'%\'');  
    }
    
    
   //add ACCOUNT
    public void SaveAccount(){
        insert ac;
        ListName.add(ac);
        ac=New Account();
        
        
    }

    //delete
    public void DelteAccount(){
        ListName=[select id from account where id=:v];
        delete ListName;
        
        AccountList();
        
        
        
    }
    
    
    
    

}