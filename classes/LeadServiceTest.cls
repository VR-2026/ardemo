@isTest
private class LeadServiceTest {

    @isTest
    static void testUpdateLeadStatus() {
        Lead testLead = new Lead(
            LastName = 'Smith',
            Company = 'Test Company',
            Status = 'Open - Not Contacted'
        );
        insert testLead;

        Test.startTest();
        LeadService.updateLeadStatus(
            testLead.Id,
            'Working - Contacted'
        );
        Test.stopTest();

        Lead updatedLead = [
            SELECT Status
            FROM Lead
            WHERE Id = :testLead.Id
        ];

        System.assertEquals(
            'Working - Contacted',
            updatedLead.Status
        );
    }
}