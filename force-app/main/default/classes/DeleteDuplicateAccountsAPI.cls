@RestResource(urlMapping='/deleteDuplicateAccounts/*')
global with sharing class DeleteDuplicateAccountsAPI {
    @HttpDelete
    global static String deleteDuplicateAccounts() {
        Map<String, Account> latestAccounts = new Map<String, Account>();
        List<Account> allAccounts = [SELECT Id, Name, CreatedDate FROM Account ORDER BY CreatedDate DESC];

        for (Account acc : allAccounts) {
            if (!latestAccounts.containsKey(acc.Name)) {
                latestAccounts.put(acc.Name, acc);
            } else {
                Account latestAcc = latestAccounts.get(acc.Name);
                if (acc.CreatedDate > latestAcc.CreatedDate) {
                    latestAccounts.put(acc.Name, acc);
                    delete latestAcc;
                } else {
                    delete acc;
                }
            }
        }

        return 'Duplicate Accounts deleted successfully.';
    }
}