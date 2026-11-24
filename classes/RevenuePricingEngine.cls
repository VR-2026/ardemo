public class RevenuePricingEngine {
    public class QuoteLine {
        public String productName;
        public Decimal unitPrice;
        public Integer quantity;
        public Decimal discountPercent;
        public Integer subscriptionMonths;

        public QuoteLine(
            String productName,
            Decimal unitPrice,
            Integer quantity,
            Decimal discountPercent,
            Integer subscriptionMonths
        ) {
            this.productName = productName;
            this.unitPrice = unitPrice;
            this.quantity = quantity;
            this.discountPercent = discountPercent;
            this.subscriptionMonths = subscriptionMonths;
        }
    }
    public class QuoteResult {
        public Decimal subtotal;
        public Decimal discountAmount;
        public Decimal netTotal;
        public Boolean approvalRequired;
    }

    public static QuoteResult calculateQuote(
        List<QuoteLine> lines,
        Decimal approvalThreshold
    ) {
        if (lines == null || lines.isEmpty()) {
            throw new IllegalArgumentException('At least one quote line is required.');
        }

        QuoteResult result = new QuoteResult();
        result.subtotal = 0;
        result.discountAmount = 0;

        for (QuoteLine line : lines) {
            validateLine(line);

            Decimal lineSubtotal =
                line.unitPrice *
                line.quantity *
                line.subscriptionMonths;

            Decimal lineDiscount =
                lineSubtotal *
                line.discountPercent /
                100;

            result.subtotal += lineSubtotal;
            result.discountAmount += lineDiscount;
        }

        result.netTotal =
            result.subtotal - result.discountAmount;

        result.approvalRequired =
            result.netTotal > approvalThreshold;

        return result;
    }
    private static void validateLine(QuoteLine line) {
        if (line == null) {
            throw new IllegalArgumentException('Quote line cannot be null.');
        }

        if (line.unitPrice < 0) {
            throw new IllegalArgumentException('Unit price cannot be negative.');
        }

        if (line.quantity <= 0) {
            throw new IllegalArgumentException('Quantity must be greater than zero.');
        }

        if (line.discountPercent < 0 || line.discountPercent > 100) {
            throw new IllegalArgumentException(
                'Discount must be between 0 and 100.'
            );
        }

        if (line.subscriptionMonths <= 0) {
            throw new IllegalArgumentException(
                'Subscription months must be greater than zero.'
            );
        }
    //EOL
    }
}