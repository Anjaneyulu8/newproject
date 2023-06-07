public class intgerationutrace {
    
   public static String ipaddress;
   public static  String body;
   public static String status;
   public static String data;
   //public String val1;
   public static string parsedata;
   public static list<Dom.XmlNode> listval2 = new list<Dom.XmlNode>();
 @AuraEnabled(cacheable=true)  
    public static String callutrace(String ipaddress){
        
        String Endpoint='http://xml.utrace.de/?query='+ipaddress;
        System.debug('endpoint'+Endpoint);
        Http con=New Http();
        HttpRequest request= New HttpRequest();
        request.setEndpoint(Endpoint);
        request.setmethod('GET');
        
        HttpResponse response=con.send(request);
        body=response.getBody();
  System.debug(body);

 
    
        Dom.Document doc= new Dom.Document();
        doc.load(body);
        Dom.XmlNode root=doc.getRootElement();
        parsedata=root.getName();
        System.debug(parsedata);
        list<Dom.XmlNode> listval=root.getChildElements();
        for(Dom.XmlNode ex : listval){
             listval2 = ex.getChildElements();
             
        }
       
        System.debug(listval2);
        for(Dom.XmlNode ec:listval2){
            parsedata= parsedata+'\n'+ec.getName();
            parsedata=parsedata+' '+ec.getText();
            System.debug('loop'+parsedata);
        }
        System.debug(parsedata);
        return parsedata;
    }
  
    
    
    
    
}