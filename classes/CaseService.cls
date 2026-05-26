//CaseService Class
//Provides methods to create and retrieve Cases
 /**
 * CaseService Class
 * Provides methods to create and retrieve Cases.
 */
public with sharing class CaseService {
    
    /**
     * Fetch recent open Cases.
     * @param limitSize - Number of cases to return.
     * @return List<Case> - Open cases sorted by CreatedDate.
     */
    @AuraEnabled(cacheable=true)
    public static List<Case> getOpenCases(Integer limitSize) {
        return [
            SELECT Id, CaseNumber, Subject, Status, Priority, CreatedDate
            FROM Case
            WHERE IsClosed = false
            ORDER BY CreatedDate DESC
            LIMIT :limitSize
        ];
    }
    
    /**
     * Create a new Case for a Contact.
     * @param contactId - The Contact linked to the Case.
     * @param description - The Case description.
     * @param priority - The Case priority (Low, Medium, High).
     * @return Id - Newly created Case Id.
     */
    @AuraEnabled
    public static Id createCase(Id contactId, String subject, String description, String priority) {
        Case newCase = new Case(
            ContactId = contactId,
            Subject = subject,
            Description = description,
            Priority = priority,
            Status = 'New'
        );
        insert newCase;
        return newCase.Id;
    }
}