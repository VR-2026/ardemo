public with sharing class DynamicFieldUpdater {

    public static void updateField(
        String objectApiName,
        Id recordId,
        String fieldApiName,
        Object value
    ) {
        Schema.SObjectType objType =
            Schema.getGlobalDescribe()
                .get(objectApiName);

        SObject record =
            objType.newSObject(recordId);

        record.put(fieldApiName, value);

        update record;
    }
}