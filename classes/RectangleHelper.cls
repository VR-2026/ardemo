public class RectangleHelper {
    // Method to calc area
    public static Decimal calculateArea(Decimal length, Decimal width) {
        if(length == null || width == null) {
            throw new IllegalArgumentException('Length and Width cannot be null');
        }
        return length * width;
    }
}
