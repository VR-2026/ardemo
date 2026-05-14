public with sharing class DynamicRecordService {

//With Sharing Enabled

    public static SObject getRecord(
        String objectApiName,
        Id recordId
    ) {
        if (String.isBlank(objectApiName)) {
            throw new IllegalArgumentException(
                'Object API name cannot be blank'
            );
        }

        String query =
            'SELECT Id, Name FROM ' +
            objectApiName +
            ' WHERE Id = :recordId';

        return Database.query(query);
    }
    //EoLine
}