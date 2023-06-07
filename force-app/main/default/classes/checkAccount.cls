@RestResource(urlMapping='/showAccountsDetails')

global class checkAccount

{

@HttpGet

global static LIST<Account> getAccount()

{

LIST<Account> lst;

try

{

lst = [select Id, name from Account where id='0015i00000VA4zGAAT'];
    System.debug(lst);

return lst;

}

catch(Exception ex)

{
system.debug('Error'+ex.getMessage());

}

return lst;

}

}