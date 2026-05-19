@isTest
private class MetadataInspectorTest {

    @isTest
    static void testGetFieldNames() {

        Test.startTest();
        List<String> fields =
            MetadataInspector.getFieldNames(
                'Account'
            );
        Test.stopTest();

        System.assert(
            fields.contains('Name')
        );

        System.assert(
            fields.contains('Industry')
        );
    }
}