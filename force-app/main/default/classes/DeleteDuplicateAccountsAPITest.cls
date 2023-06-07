@isTest
private class DeleteDuplicateAccountsAPITest {
    @testSetup
    static void createTestAccounts() {
        // Create two accounts with the same name and different created dates
        Account acc1 = new Account(Name='Test Account');
        Account acc2 = new Account(Name='Test Account');
        insert new List<Account>{acc1, acc2};
    }

    @isTest
    static void testDeleteDuplicateAccounts() {
        Test.startTest();

        // Call the API method to delete duplicate accounts
        DeleteDuplicateAccountsAPI.deleteDuplicateAccounts();

        // Verify that only one account with the specified name remains in the system
        List<Account> accounts = [SELECT Id, Name FROM Account];
        System.assertEquals(1, accounts.size());
        System.assertEquals('Test Account', accounts[0].Name);

        Test.stopTest();
    }
}