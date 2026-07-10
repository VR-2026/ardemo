@IsTest
private class AccountServiceTest {

    @TestSetup
    static void createData() {

        List<Account> accounts = new List<Account>();

        for(Integer i = 0; i < 5; i++) {
            accounts.add(new Account(
                Name = 'Test Account ' + i
            ));
        }

        insert accounts;
    }

    @IsTest
    static void testSmallBusiness() {

        Test.startTest();

        String result = AccountService.getAccountType(25);

        Test.stopTest();

        System.assertEquals('Small Business', result);
    }

    @IsTest
    static void testMidMarket() {

        String result = AccountService.getAccountType(100);

        System.assertEquals('Mid Market', result);
    }

    @IsTest
    static void testEnterprise() {

        String result = AccountService.getAccountType(500);

        System.assertEquals('Enterprise', result);
    }

    @IsTest
    static void testNullEmployeeCount() {

        try {
            AccountService.getAccountType(null);
            System.assert(false, 'Exception expected');
        }
        catch (IllegalArgumentException ex) {
            System.assertEquals(
                'Employee count cannot be null',
                ex.getMessage()
            );
        }
    }

    @IsTest
    static void testDiscountTwentyPercent() {

        Decimal discount =
            AccountService.calculateDiscount(150000);

        System.assertEquals(30000, discount);
    }

    @IsTest
    static void testDiscountTenPercent() {

        Decimal discount =
            AccountService.calculateDiscount(75000);

        System.assertEquals(7500, discount);
    }

    @IsTest
    static void testDiscountFivePercent() {

        Decimal discount =
            AccountService.calculateDiscount(10000);

        System.assertEquals(500, discount);
    }

    @IsTest
    static void testDiscountZero() {

        System.assertEquals(
            0,
            AccountService.calculateDiscount(0)
        );

        System.assertEquals(
            0,
            AccountService.calculateDiscount(null)
        );
    }

    @IsTest
    static void testGetActiveAccounts() {

        Test.startTest();

        List<Account> accounts =
            AccountService.getActiveAccounts();

        Test.stopTest();

        System.assertEquals(5, accounts.size());
    }
}