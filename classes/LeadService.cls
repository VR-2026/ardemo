public with sharing class LeadService {

    public static void updateLeadStatus(Id leadId, String newStatus) {
        if (leadId == null) {
            throw new IllegalArgumentException('Lead Id cannot be null');
        }

        if (String.isBlank(newStatus)) {
            throw new IllegalArgumentException('Status cannot be blank');
        }

        Lead ld = [
            SELECT Id, Status
            FROM Lead
            WHERE Id = :leadId
            LIMIT 1
        ];

        ld.Status = newStatus;
        update ld;
    }
}