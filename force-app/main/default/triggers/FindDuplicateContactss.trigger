trigger FindDuplicateContactss on Contact (before insert) 
{
    Set<id> accId = new Set<id>(); // Always try to use set
    for(contact cc : trigger.new)
    {
        if(cc.AccountId != null)
        {
            accId.add(cc.AccountId);    
        }
    }

    Map<Id,Account> mapAccount = new Map<Id,Account> ( [select id,(select id from contacts) from account where id IN : accId] ) ;
    for(contact oCon:trigger.new)
    {   
        if( oCon.AccountId != null && mapAccount.containsKey(oCon.AccountId) )
        {
            Account acc = mapAccount.get(oCon.AccountId);
            if(acc.Contacts.size()>1 )
            {
                oCon.addError('you can not add more then once contact for this account'); 
            }
        }
    }
}