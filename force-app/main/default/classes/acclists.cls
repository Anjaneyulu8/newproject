public class acclists
{
public List<wrapper> wrap{get;set;}
public acclists()
{
wrap = new List<wrapper>();
List<Account> ac= [select id, Name, Type,Rating,AnnualRevenue from Account ];
for(Account a : ac)
{
wrap.add(new wrapper(a));
}
}
public pageReference deleted()
{
List<Account> acclist = new List<Account>();
for(wrapper w: wrap)
{
if(w.checkbox == true)
{
acclist.add(w.acc);
}
}
if(acclist.size()>0)
{
System.debug(acclist);
delete acclist;
}
pagereference pr=new pagereference('/apex/acctrecordmultdelete');
pr.setRedirect(true);
return pr;
}
public class wrapper
{
public Account acc{get;set;}
public Boolean checkbox{get;set;}
public wrapper(Account acc1)
{
acc=acc1;
checkbox=false;
}
}
}