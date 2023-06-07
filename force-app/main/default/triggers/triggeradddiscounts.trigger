trigger triggeradddiscounts on Billing_Detail__c (before insert) {
    list<Billing_Detail__c> Bl=Trigger.New;
    For(Billing_Detail__c b:Bl){
        if(b.Room_Type__c=='ICU'){
            b.Amount__c= b.Amount__c- (b.Amount__c *b.GST__c/100);
            System.debug('Hloo'+b.Amount__c);
        }
    }

}