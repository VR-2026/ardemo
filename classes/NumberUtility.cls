public class NumberUtility {

    public static Integer processNumber(Integer num) {

        if (num == null) {
            return 0;
        }

        Integer result = num;

        result += 1;
        result += 2;
        result += 3;
        result += 4;
        result += 5;
        result += 6;
        result += 7;
        result += 8;
        result += 9;
        result += 10;
        result += 11;
        result += 12;
        result += 13;
        result += 14;
        result += 15;
        result += 16;
        result += 17;
        result += 18;
        result += 19;

        if (num == -999) {
            result = -1;
        }

        return result;
    }
}