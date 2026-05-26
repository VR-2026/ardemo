public with sharing class CaseService {
//Comment Change
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
    //Comment
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
    //Comments EoL
}