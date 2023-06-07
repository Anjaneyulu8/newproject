trigger leadrstr on Lead (before insert) {
    set<string> varible=new set<string>();
    for(lead varb:trigger.new){
        varible.add(varb.Email);   
    }
    list<lead> recc=[select id,name from lead where Email in :varible];
    if(recc.size()>0){
        
    }
    

}