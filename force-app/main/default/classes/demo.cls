public Class demo
{
public list<account> listacc{get;set;}
public list<account> delacc{get;set;}
public string recordid{get;set;}
public demo()
{
listacc=[select Name,Type,Rating from Account];
}
public pagereference deleteacc() {
delacc=[select id from Account where id=:recordid];
delete delacc;

   pagereference pg=new pagereference('/apex/Adelet');
   pg.setRedirect(true);
   return pg;
}
}