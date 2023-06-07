trigger triggerbefore on Account (before insert) {
    list<Account> ac=Trigger.New;
    For(Account a:ac){
        if(a.Phone==Null){
            a.Phone='70329385356';
        }
    }

}