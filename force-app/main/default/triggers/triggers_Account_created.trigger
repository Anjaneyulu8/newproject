trigger triggers_Account_created on Account (before insert) {
    if(Trigger.isInsert||Trigger.isUpdate)
    for(Account acc:trigger.new){
       Integer Var=[select count() from Account where Name=:acc.Name];
        if(var>0){
            acc.addError('alrdy exits');
        }
    }
}