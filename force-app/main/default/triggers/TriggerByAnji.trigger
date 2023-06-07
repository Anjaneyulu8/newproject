trigger TriggerByAnji on Contact (before update) {
 
    for(Contact aa:Trigger.old){
        System.debug(aa);
    }
}