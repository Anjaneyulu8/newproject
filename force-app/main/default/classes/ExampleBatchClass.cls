global class ExampleBatchClass implements Database.Batchable<sObject>{
    global ExampleBatchClass(){
    }

    global Database.QueryLocator start(Database.BatchableContext BC){
        return Database.getQueryLocator([
            select Id
            from Event__c
            where CreatedDate = LAST_N_DAYS:01
            ]);
    }

    global void execute(Database.BatchableContext BC, List<Event__c>scope){
        delete scope;
    }

    global void finish(Database.BatchableContext BC){
    }
}