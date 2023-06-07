@RestResource(urlMapping='/showAccountstails')

global class mulesoftaccont

{

@HttpGet

global static LIST<Account> getAccount()

{

LIST<Account> lst;

try

{

lst = [select name,phone from Account];

return lst;

}

catch(Exception ex)

{
system.debug('Error'+ex.getMessage());

}

return lst;

}

}