/**
 * ContactService Class
 * Provides methods to search and create Contacts.
 */
public with sharing class ContactService {
    
    /**
     * Search for contacts by keyword (FirstName or LastName).
     * @param searchKey - Partial name to search.
     * @return List<Contact> - Matching contacts.
     */
    @AuraEnabled(cacheable=true)
    public static List<Contact> searchContacts(String searchKey) {
        String key = '%' + searchKey + '%';
        return [
            SELECT Id, FirstName, LastName, Email, Phone, Account.Name
            FROM Contact
            WHERE FirstName LIKE :key OR LastName LIKE :key
            ORDER BY LastName
            LIMIT 50
        ];
    }
    
    /**
     * Create a new Contact under an Account.
     * @param accId - Parent Account Id.
     * @param firstName - Contact's first name.
     * @param lastName - Contact's last name.
     * @param email - Contact's email.
     * @return Id - Newly created Contact Id.
     */
    @AuraEnabled
    public static Id createContact(Id accId, String firstName, String lastName, String email) {
        Contact con = new Contact(
            AccountId = accId,
            FirstName = firstName,
            LastName = lastName,
            Email = email
        );
        insert con;
        return con.Id;
    }
}