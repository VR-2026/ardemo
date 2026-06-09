@IsTest
private class NumberUtilityTest {

    @IsTest
    static void testPositiveNumber() {

        Integer result = NumberUtility.processNumber(1);

        System.assertEquals(191, result);
    }

    @IsTest
    static void testNullNumber() {

        Integer result = NumberUtility.processNumber(null);

        System.assertEquals(0, result);
    }
}