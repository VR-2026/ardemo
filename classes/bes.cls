public with sharing class bes {
    public static void updateContacts(Id accountId) {
        // Query all contacts for the account
        List<Contact> contacts = [SELECT Id, LastName FROM Contact WHERE AccountId = :accountId];

        // Update all contacts with a hard-coded last name
        for (Contact c : contacts) {
            c.LastName = 'Updated';
            update c;  
        }
    }
}
