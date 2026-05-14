@isTest
private class DynamicFieldUpdaterTest {

    @isTest
    static void testUpdateField() {
        Account acc = new Account(
            Name = 'Original Name'
        );
        insert acc;

        Test.startTest();
        DynamicFieldUpdater.updateField(
            'Account',
            acc.Id,
            'Industry',
            'Technology'
        );
        Test.stopTest();

        Account updated = [
            SELECT Industry
            FROM Account
            WHERE Id = :acc.Id
        ];

        System.assertEquals(
            'Technology',
            updated.Industry
        );
    }
}