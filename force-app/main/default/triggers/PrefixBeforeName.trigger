trigger PrefixBeforeName on Account (before insert) {
    for(Account acc :Trigger.new){
      acc.Name= acc.Salutation__c+acc.Name;
    }
}