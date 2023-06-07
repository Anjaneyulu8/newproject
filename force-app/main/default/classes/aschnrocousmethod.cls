public class aschnrocousmethod {
 @future
    public static void  handlermethod(Id id){
         interaction__c li=new interaction__c(); 
        li.Id=id;
       
        System.debug('EMAIL:'+li.id);
        insert li;
}
 
}