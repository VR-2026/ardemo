public class LeadManager {
    // Create A New Lead
    public static Lead createLead(String firstName, String lastName, String company) {
        Lead newLead = new Lead(FirstName = firstName, LastName = lastName, Company = company);
        insert newLead;
        return newLead;
    }
    // Deletion of Lead Using ID
    public static void deleteLead(Id leadId) {
        Lead leadToDelete = [SELECT Id FROM Lead WHERE Id = :leadId LIMIT 1];
        delete leadToDelete;
    }
    //End of Line
}