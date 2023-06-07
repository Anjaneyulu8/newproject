public class getContacts 
{
    public Id accountid;
    public List<Contact> con{get;set;}
    public getContacts()
    {
        con=[select Name,AccountId from Contact];
    }
  public void contactFieldsConcat(Id accid){
        
        accountid = accid;
              
string query ='select id, name, (select id, name from Contacts) from account where id =: '+accountid;
        con = Database.query(query);
}
}