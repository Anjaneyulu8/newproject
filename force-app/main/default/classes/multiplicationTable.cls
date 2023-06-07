public class multiplicationTable {
Public Integer Num{get;set;}
Public Integer multiply{get;set;}
Public List<MulTable> Tablelist{get;set;}
public multiplicationTable()
{
    Tablelist = new List<MulTable>();
}

Public void generateTable()
{
    for(Integer i=1;i<=multiply;i++)
    {
        Tablelist.add(new MulTable(Num,i,Num*i));
    }
}

Public void cleartable()
{
    Num = null;
    multiply = null;
    Tablelist = new List<MulTable>();
}

 Public class MulTable
 {
     Public Integer num{get;set;}
     Public Integer mutiplicationfactor{get;set;}
     Public Long product{get;set;}
     
     Public MulTable(Integer numb, Integer mul, Long prod)
     {
         num = numb;
         mutiplicationfactor = mul;
         product = prod;
     }
 }
}