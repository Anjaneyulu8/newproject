trigger AccountTrigger on Account (before update) {

for(Account Acc : Trigger.new) {
if(Acc.Name != trigger.OldMap.get(Acc.Id).Name){
Acc.Name.AddError('Account Name Cannot be Changed.');
}
}
}