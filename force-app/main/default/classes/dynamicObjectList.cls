public class dynamicObjectList {
@AuraEnabled public static List<String> strList{get;set;}
@AuraEnabled(cacheable=true)
    public static List<String> getObjectName(){
        List<String> objects=new List<String>();
       Map<String,Schema.SObjectType> objMap=Schema.getGlobalDescribe();
       
        for(String s : objMap.keyset()){
            objects.add(s);
        }
        System.debug(objects);
        objects.sort();
        return objects;
    }

@AuraEnabled(cacheable=true)

public static list<SObject>getdata(String data){

    List<sObject> a = Database.query('SELECT Id, Name from '+data );

    return a;



}


}