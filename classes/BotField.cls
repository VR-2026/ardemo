
public class BuggyClass {
    
    // 1. Wrong variable scope (should be private or public with getter/setter)
    String accountName;

    // 2. Recursive SOQL inside a loop (bad practice, governor limit risk)
    public void createContactsForAccounts(List<Id> accountIds) {
        for(Id accId : accountIds) {
            Account acc = [SELECT Id, Name FROM Account WHERE Id = :accId]; // SOQL inside loop

            Contact con = new Contact();
            con.LastName = acc.Name; // risky: LastName required, but Name might be null
            con.AccountId = accId;
            insert con;
        }
    }

    // 3. Hard-coded ID (anti-pattern)
    public static void assignOwner(Contact con) {
        con.OwnerId = '005xx0000012345AAA'; 
        update con;
public class BotField {
//Changed Here
    @AuraEnabled public String name { get;set; }
    @AuraEnabled public String value { get;set; }
    //New Line Change     
    @AuraEnabled public String linkURL { get;set; }
    //New Line Change Made Now
    public BotField(String name, String value) {
        this.name = name;
        this.value = value;
    }
    //Here
    public BotField(String name, String value, string linkURL) {
        this.name = name;
        this.value = value;
        this.linkURL = linkURL;
      //Comment
    }

    // 4. Missing bulkification in DML
    public static void deactivateUsers(List<User> usersToDeactivate) {
        for(User u : usersToDeactivate) {
            u.IsActive = false;
            update u; // DML inside loop
        }
    }

    // 5. Null pointer risk
    public static String getAccountIndustry(Id accountId) {
        Account acc = [SELECT Industry FROM Account WHERE Id = :accountId LIMIT 1];
        return acc.Industry.toUpperCase(); // will throw NullPointerException if Industry is null
    }

    // 6. Poor exception handling
    public static void doSomethingRisky() {
        try {
            Integer x = 5 / 0; // runtime error
        } catch (Exception e) {
            System.debug('Something went wrong'); // swallowing exception, no rethrow
        }
    }
}
