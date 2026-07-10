public with sharing class AccountService {

    public static String getAccountType(Integer employeeCount) {

        if (employeeCount == null) {
            throw new IllegalArgumentException('Employee count cannot be null');
        }

        if (employeeCount < 50) {
            return 'Small Business';
        }
        else if (employeeCount < 250) {
            return 'Mid Market';
        }
        else {
            return 'Enterprise';
        }
    }

    public static Decimal calculateDiscount(Decimal amount) {

        if (amount == null || amount <= 0) {
            return 0;
        }

        if (amount >= 100000) {
            return amount * 0.20;
        }

        if (amount >= 50000) {
            return amount * 0.10;
        }

        return amount * 0.05;
    }

    public static List<Account> getActiveAccounts() {

        return [
            SELECT Id, Name
            FROM Account
            WHERE IsDeleted = FALSE
            LIMIT 100
        ];
    }
}