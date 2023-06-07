trigger leadr on Lead (before insert) {
    
      if(Trigger.isBefore && Trigger.isInsert){
          list<lead> rec=[select id,Email from lead];
          Savepoint sp = Database.setSavepoint();
    for(Lead lo :rec){
        for(Lead ln:Trigger.new){
            
             if(lo.Email == ln.Email){
           
               
             interaction__c li=new interaction__c();
                li.Name =ln.LastName;
                   try{
               database.insert(li);
                 System.debug('hloo'+li);
                 }
                       catch(exception ex){
   

                 ln.addError('aavadu amma');
                  Database.rollback(sp);
                 }
                 
                 // Savepoint sp = Database.setSavepoint();
                // insert lead;
                // Database.rollback(sp);
          }
           



       }
   }

}
}