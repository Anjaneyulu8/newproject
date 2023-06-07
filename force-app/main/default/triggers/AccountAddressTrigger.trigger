trigger AccountAddressTrigger on Account (before insert, before update) {
    for(Account a : Trigger.New) {
        
            if( a.ShippingAddress==null){
                
                a.ShippingPostalCode = a.BillingPostalCode;
                a.ShippingStreet=a.BillingStreet;
                a.ShippingCountry=a.BillingCountry;
                a.ShippingCity=a.BillingCity;
               
        
    }
    } 
}