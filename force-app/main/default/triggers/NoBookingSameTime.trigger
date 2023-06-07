trigger NoBookingSameTime on Event_Speaker__c (before insert , before update) {
    for(Event_Speaker__c r : trigger.new ){
        List<Event_Speaker__c> ebe = [Select Id from Event_Speaker__c where Speaker__c =:r.Speaker__c];
        if(ebe.size()>0){
            r.addError('Double Booking is also not allowed'); 
        }
    }
    
    
}