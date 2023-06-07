public class integerateclass {
  
    public void method1(){
          List<string>Na=New List<string>();
        String Json1='{"PostOffice":[{"Name":"Humayunnagar","Description":null,"BranchType":"Sub Post Office","DeliveryStatus":"Delivery","Circle":"Andhra Pradesh","District":"Hyderabad","Division":"Hyderabad City","Region":"Hyderabad City","Block":"Asifnagar","State":"Telangana","Country":"India","Pincode":"500028"},{"Name":"Murad Nagar (Hyderabad)","Description":null,"BranchType":"Sub Post Office","DeliveryStatus":"Non-Delivery","Circle":"Andhra Pradesh","District":"Hyderabad","Division":"Hyderabad City","Region":"Hyderabad City","Block":"Asifnagar","State":"Telangana","Country":"India","Pincode":"500028"},{"Name":"Shantinagar (Hyderabad)","Description":null,"BranchType":"Sub Post Office","DeliveryStatus":"Non-Delivery","Circle":"Andhra Pradesh","District":"Hyderabad","Division":"Hyderabad City","Region":"Hyderabad City","Block":"Asifnagar","State":"Telangana","Country":"India","Pincode":"500028"}]}';
        System.JSONParser Pars1= Json.createParser(Json1);
        While(Pars1.nextToken()!=null){
            if(Pars1.getText()=='Name'){
                Pars1.nextToken();
               Na.add(pars1.getText());
                
                System.debug(Na);
            }
            
        }
    }
    

}