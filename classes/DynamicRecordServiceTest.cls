@isTest
private class DynamicRecordServiceTest {

    @isTest
    static void testGetRecord() {
        Account acc = new Account(
            Name = 'Dynamic Test Account'
        );
        insert acc;

        Test.startTest();
        SObject result =
            DynamicRecordService.getRecord(
                'Account',
                acc.Id
            );
        Test.stopTest();

        System.assertEquals(
            acc.Id,
            result.get('Id')
        );
    }
}