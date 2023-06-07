trigger triggeroldmapnewmap on Account (before update) {
    list<Account>aclist=Trigger.New;
    list<Account>oldlist=Trigger.old;
    for(Account a:aclist){
        for(Account ab:oldlist){
            if(a.Phone==ab.Phone){
                a.Phone.AddError('Error'+ a.Phone);
            }
            
        }
    }
    

}