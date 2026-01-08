/**
 * Sample 
 *class to fetch Accounts
 * and expose them to Lightning / Aura / LWC.
 */
public with sharing class AccountService {
    
    /**
     * Fetches all Accounts.
     * @return List<Account> - Accounts in the org
     */
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts() {
        return [
            SELECT Id, Name, Industry, Phone 
            FROM Account
            ORDER BY Name
            LIMIT 50
        ];
    }

    /**
     * Fetches a single Account by Id.
     * @param accountId - The Id of the Account
     * @return Account - Matching Account record
     */
    @AuraEnabled(cacheable=true)
    public static Account getAccountById(Id accountId) {
        return [
            SELECT Id, Name, Industry, Phone, Website
            FROM Account
            WHERE Id = :accountId
            LIMIT 1
        ];
    }

    /**
     * Creates a new Account.
     * @param acc - Account record to insert
     * @return Id - Newly created Account Id
     */
    @AuraEnabled
    public static Id createAccount(Account acc) {
        insert acc;
        return acc.Id;
    }
}