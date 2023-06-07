public class task {
     @AuraEnabled(cacheable=true)
    public static List<Task__c>todaylist(){
        return[SELECT Id, Name, IsCompleted__c FROM Task__c WHERE 
        Close_Date__c = TODAY];

    }


         @AuraEnabled(cacheable=true)
    public static List<Task__c>tomorrowlist(){
        return[SELECT Id, Name, IsCompleted__c FROM Task__c WHERE Close_Date__c = TOMORROW];
    }



     @AuraEnabled(cacheable=true)
    public static List<Task__c>yesterdaylist(){
        return[SELECT Id, Name,IsCompleted__c FROM Task__c WHERE Close_Date__c = YESTERDAY];
    }


@AuraEnabled
public static list<Task__c>updaterec(ID str){

      List<Task__c> newlist = new list<Task__c>();
       list<Task__c> newlist2=[SELECT Id, Name FROM Task__c WHERE ID =:str];
           for(Task__c val:newlist2){
               val.IsCompleted__c=TRUE;
               
newlist.add(val);
           }
           update newlist;
           return newlist;
}
}