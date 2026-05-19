public with sharing class MetadataInspector {

    public static List<String> getFieldNames(
        String objectApiName
    ) {
        Map<String, Schema.SObjectField> fields =
            Schema.getGlobalDescribe()
                .get(objectApiName)
                .getDescribe()
                .fields.getMap();

        return new List<String>(
            fields.keySet()
        );
    }
}