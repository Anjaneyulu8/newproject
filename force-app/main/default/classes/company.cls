public class company {
    @AuraEnabled(cacheable=true)
public static list<Company__c>Companylist(){
    return[SELECT ID,Name FROM Company__c];
}
@AuraEnabled(cacheable=true)
public static list<SObject>getdata(String str){

    return[SELECT Id,Name,Company__c FROM Employee__c where Company__c=:str];
}
@AuraEnabled(cacheable=true)
public static list<SObject>fulllistdata(String str){

    return[SELECT Id,Name,Company__c FROM Employee__c where Company__c NOT IN(:str)];
}

@AuraEnabled
public static list<SObject> removedata(String str, String emp){
 
   list<Employee__c> ll = new List<Employee__c>();
    List<Employee__c> th = [SELECT Id,Name,Company__c FROM Employee__c where ID =:emp];
    For(Employee__c ee : th){

        ee.Company__c = null;
        ll.add(ee);
    }
    update ll;
     return ll;

     
}

@AuraEnabled
public static void adddata(String str,string emp){
 
  /* list<Employee__c> ll = new List<Employee__c>();
    List<Employee__c> th = [SELECT Id,Name,Company__c FROM Employee__c where Company__c=:str];
    For(Employee__c ee : th){

        ee.Company__c = str;
        ll.add(ee);
    }*/
    Employee__c ee = new Employee__c();
    ee.ID=emp;
    ee.Company__c=str;

    update ee;
    System.debug(ee);
    
}
}