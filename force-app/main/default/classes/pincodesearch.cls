public class pincodesearch {
   public static String Input;
   public static list<String>Output = new List<String>();
    public Static void calloutmethod(String Input){
        String Endpoint='https://api.postalpincode.in/pincode/'+Input;
        Http ht=New Http();
        HttpRequest Request=New HttpRequest();
        Request.setEndpoint(Endpoint);
        Request.setMethod('GET');
        
        HttpResponse Response=ht.send(Request);
        String body=Response.getBody();
        System.debug(body);
        
        
        System.JSONParser Deserilzation=JSON.createParser(body);
        while(Deserilzation.nextToken()!=null){
            if(Deserilzation.getText()=='Name'){
                Deserilzation.nextToken();
                Output.add(Deserilzation.getText());
                System.debug(Output);
                
            }
        }
        
        
    } 

}