@isTest
public class LeadManagerTest {
    // Test creating a lead
    @isTest
    static void testCreateLead() {
        // Create a new lead
        Lead newLead = LeadManager.createLead('John', 'Doe', 'TechCorp');
        // Verify the lead was created
        System.assertNotEquals(null, newLead.Id, 'Lead was not created');
        System.assertEquals('John', newLead.FirstName, 'First name does not match');
        System.assertEquals('Doe', newLead.LastName, 'Last name does not match');
        System.assertEquals('TechCorp', newLead.Company, 'Company name does not match');
    }
    // Test Delete
    @isTest
    static void testDeleteLead() {
        // Create a lead to delete
        Lead newLead = LeadManager.createLead('Jane', 'Smith', 'InnoTech');
        Id leadId = newLead.Id;

        // Delete the lead
        LeadManager.deleteLead(leadId);

        // Verify the lead was deleted
        Lead deletedLead = [SELECT Id FROM Lead WHERE Id = :leadId LIMIT 1];
        System.assertEquals(null, deletedLead, 'Lead was not deleted');
    }
}