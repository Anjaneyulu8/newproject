public with sharing class apex {
    public List<contact>accList{get;set;}
    public apex(){
        accList = [select id,name from contact limit 10];
    }
}