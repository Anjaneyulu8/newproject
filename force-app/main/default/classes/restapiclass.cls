@RestResource(urlmapping='/CreateAccount/*')
Global class restapiclass {
@HttpPost
    Global Static String  Callme(String Name){
        System.JSONGenerator js=JSON.createGenerator(True);
        js.writeStartObject();
        Try{
            Account ac=New Account();
            ac.Name=Name;
            js.writeStringField('Status', 'Success');
            insert ac;
            System.debug(ac);
           
        }
        catch(Exception E){
            js.writeStringField('Status', 'Fail');
            
        }
        js.writeEndObject();
        string result=js.getAsString();
        System.debug(result);
        return result;
        
    }
}