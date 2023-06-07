trigger receiptgenerate on Billing_Detail__c (After insert) {
  /*  list<Billing_Detail__c> Blist=Trigger.New;
list<Receipt__c>BD=New list<Receipt__c>();
    For(Billing_Detail__c bdc:Blist){
        Receipt__c rp=New Receipt__c();
      rp.Ammount__c=bdc.Amount__c;
        rp.Name=bdc.Name;
        BD.add(rp);
    }
    insert BD;*/
    
    map<ID,Billing_Detail__c>Bdd=Trigger.NewMap;
    System.debug('Map'+Trigger.NewMap);
    System.debug('Map'+Trigger.New);
    
    set<Id>bds=Bdd.keySet();
    list<Billing_Detail__c> idlist=[Select Id,Amount__c,Name from Billing_Detail__c where ID In :bds];
   list<Receipt__c>BD=New list<Receipt__c>();
    For(Billing_Detail__c bdc:idlist){
        Receipt__c rp=New Receipt__c();
      rp.Ammount__c=bdc.Amount__c;
        rp.Name=bdc.Name;
        BD.add(rp);
    }
    insert BD;
     
    
    
    
    
    
    
}