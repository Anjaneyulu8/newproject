trigger EventSpeakerSameTimeTrigger on Event_Speaker__c (before insert,before Update) {
    if(Trigger.isBefore && Trigger.isInsert || Trigger.isUpdate){
        
       for(Event_Speaker__c dc: trigger.new)
{
    Event__c evtlist=[select Id,Start__c from Event__c where Id=:dc.Event__c  ];
    List<Event_Speaker__c> evtspklist=[select Id from Event_Speaker__c where Event__c=:dc.Event__c AND Event__r.Start__c=:evtlist.Start__c ];
if(!evtspklist.isEmpty()){
            dc.addError('The speaker is already booked at that time');
        }
}
}

}