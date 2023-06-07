public class leadmsgintegration {
    @future(callout=true)
	    public static void leadsms(set<Id> ids){
        list<Lead> leadlist=[Select Id,Name,Phone from lead where Id in:ids];
        for(lead aa:leadlist){
            Http callout=New Http();
            HttpRequest Request=New HttpRequest();
            String Endpoint='https://api.textlocal.in/send/?';
                 Endpoint=Endpoint+'ZdwU1MAxnhk-CLJsGP7fTy5XtWX5uAXgOFBQE7vDxB';
                Endpoint= Endpoint+'&numbers='+'91'+aa.Phone;
            Endpoint=Endpoint+'&sender=TXTLCL';
              Endpoint=Endpoint+ '&message=Congratulations...!!! Succesufully New Lead is created on your Mobile Number';
                
            
            Request.setEndpoint(Endpoint);
            Request.setMethod('GET');
            HttpResponse Response=callout.send(Request);
            System.debug(Response);
            
        }
        
        
    }
}