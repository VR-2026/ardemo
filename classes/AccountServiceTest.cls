@isTest
public class AccountServiceTest {
    @isTest
    static void testGetAccounts() {
        List<Account> accList = new List<Account>();
        for(Integer i = 0; i < 5; i++){
            accList.add(new Account(
                Name = 'Test Account ' + i,
                Industry = 'Technology',
                Phone = '1234567890'
            ));
        }
        insert accList;



        Test.startTest();
        List<Account> result = AccountService.getAccounts();
        Test.stopTest();

        System.assert(result.size() > 0);
    }

    @isTest
    static void testGetAccountById() {
        Account acc = new Account(
            Name = 'Single Account',
            Industry = 'Finance',
            Phone = '9876543210',
            Website = 'https://example.com'
        );
        insert acc;

        Test.startTest();
        Account result = AccountService.getAccountById(acc.Id);
        Test.stopTest();

        System.assertEquals(acc.Id, result.Id);
        System.assertEquals('Single Account', result.Name);
    }

    @isTest
    static void testCreateAccount() {
        Account acc = new Account(
            Name = 'Created Account',
            Industry = 'Retail',
            Phone = '1112223333'
        );

        Test.startTest();
        Id newId = AccountService.createAccount(acc);
        Test.stopTest();

        Account insertedAcc = [SELECT Id, Name FROM Account WHERE Id = :newId];

        System.assertEquals('Created Account', insertedAcc.Name);
    }
}
//End of Line