public with sharing class UserController {
    @AuraEnabled
  
public static void signUpUser(String email, String password) {
    User newUser = new User(
        Email = email,
        Username = email,
        FirstName = 'New',
        LastName = 'User',
        Alias = 'nu',
        TimeZoneSidKey = 'America/Los_Angeles',
        LocaleSidKey = 'en_US',
        EmailEncodingKey = 'UTF-8',
        ProfileId = [SELECT Id FROM Profile WHERE Name='Standard User'].Id,
        LanguageLocaleKey = 'en_US'
    );
  //  newUser.setPassword(password);
    insert newUser;
}


    @AuraEnabled
    public static void signInUser(String email, String password) {
        User user = [SELECT Id, Username, IsActive FROM User WHERE Username = :email AND IsActive = true];
        if (user == null) {
            throw new AuraHandledException('User not found');
        }
    //    if (!Test.isRunningTest() && !Crypto.verifyPassword(user.Password, password)) {
            throw new AuraHandledException('Incorrect password');
        }
    }