@RestResource(urlMapping='/Account/*')
global with sharing class newrestclass {
    @HttpPost
    global static String doPost(String name,
        String phone) {
        Account account = new Account();
        account.Name = name;
        account.phone = phone;
      
        insert account;
        return account.Id;
    }
}