public class acclist {
public List<wrapper> wrap{get;set;}
    //constructor
public acclist()
{   
wrap = new List<wrapper>();
string DelId = apexPages.currentPage().getParameters().get('id');

List<Account> acc= [select id, Name, Type,Rating,AnnualRevenue from Account where parentId =:DelId ];

for(Account a : acc)
{
wrap.add(new wrapper(a));
    
}
}


public void deleted()
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
delete acclist;

}
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