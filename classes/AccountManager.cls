public class AccountManager {
    public static Account createAccount(String accountName, String phone, String website) {
        Account newAccount = new Account(
            Name = accountName,
            Phone = phone,
            Website = website
        );
        insert newAccount;
        return newAccount;
    }
     //Method -  Change an existing account's phone and website
   
    public static Account updateAccount(String accountId, String newPhone, String newWebsite) {
        Account accToUpdate = [SELECT Id, Phone, Website FROM Account WHERE Id = :accountId LIMIT 1];
        accToUpdate.Phone = newPhone;
        accToUpdate.Website = newWebsite;
        update accToUpdate;
        return accToUpdate;
    }
   
   
    public static void deleteAccount(String accountId) {
        Account accToDelete = [SELECT Id FROM Account WHERE Id = :accountId LIMIT 1];
        delete accToDelete;
    }
    // Method to get a list of accounts with a specific Ph Num
    public static List<Account> getAccountsByPhone(String phone) {
        List<Account> accounts = [SELECT Id, Name, Phone, Website FROM Account WHERE Phone = :phone];
        return accounts;
    }


    // Method - getting a list of accounts
    public static List<Account> getAllAccounts() {
        List<Account> accounts = [SELECT Id, Name, Phone, Website FROM Account];
        return accounts;
    }
}
