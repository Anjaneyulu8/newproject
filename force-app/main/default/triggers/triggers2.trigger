trigger triggers2 on Account (before insert) {
    for(Account Var:Trigger.new){
        if(var.AnnualRevenue>1000000){
            var.Montly_Revenue__c.addError('montly revenue it cant be blank');
           
        }
         }
}