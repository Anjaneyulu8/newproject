trigger updateAccountRating on Account (before insert){
for(Account VarRating:Trigger.new)
{
    if(VarRating.rating=='cold'){
        
     VarRating.CustomerPriority__c='low';
    }
}
}