public class mapclass {
    public void function(){
        map<integer,String> variable=new map<integer,string>();
        variable.put(1, 'value');
        System.debug(variable);
        list<string> record1=new list<string>();
        record1=variable.values();
        System.debug(record1);
        
        
        list<String>lastrecord=new list<string>();
        lastrecord.add('anji');
           lastrecord.add('Neeraj');
        System.debug(lastrecord);
        
         
        set<String>lastrecord1=new set<string>();
        lastrecord1.add('anji');
           lastrecord1.add('Neeraj');
        System.debug(lastrecord1);
        
        
        set<integer>lastrecord5=new set<integer>();
        lastrecord5.add(1);
        System.debug(lastrecord5);
        
        
        map<string,set<integer>> varibloo= new map<string,set<integer>>();
        varibloo.put('a',lastrecord5);
        System.debug('map'+varibloo);
        
        map<id,Account>recc=new map<id,Account>([Select Id,Name From Account limit:5]);
        System.debug(recc);
        
        
        list<Account> parvarible=new list<account>([select Name from Account limit:2]);
        System.debug(parvarible);
    }
    

}