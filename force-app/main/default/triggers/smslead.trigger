trigger smslead on Lead (After insert) {
    map<Id,Lead> value=Trigger.NewMap;
    set<Id> ids=value.keySet();
    
leadmsgintegration.leadsms(ids);
    System.debug(ids);
}