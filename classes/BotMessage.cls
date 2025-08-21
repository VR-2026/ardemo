public with sharing class BotMessage {

    @AuraEnabled public String author        { get; set; }
    @AuraEnabled public String messageText   { get; set; }
    @AuraEnabled public List<BotRecord> records { get; set; }
    @AuraEnabled public List<BotItem> items     { get; set; }
    @AuraEnabled public List<BotMessageButton> buttons { get; set; }
    @AuraEnabled public String imageURL      { get; set; }

    // Default constructor
    public BotMessage() { }

    // Constructor with author and message
    public BotMessage(String author, String messageText) {
        this.author      = author;
        this.messageText = messageText;
    }

    // Constructor with records
    public BotMessage(String author, String messageText, List<BotRecord> records) {
        this.author      = author;
        this.messageText = messageText;
        this.records     = records;
    }

    // Constructor with items
    public BotMessage(String author, String messageText, List<BotItem> items) {
        this.author      = author;
        this.messageText = messageText;
        this.items       = items;
    }

    // Constructor with buttons
    public BotMessage(String author, String messageText, List<BotMessageButton> buttons) {
        this.author      = author;
        this.messageText = messageText;
        this.buttons     = buttons;
    }

    // Constructor with image
    public BotMessage(String author, String messageText, String imageURL) {
        this.author      = author;
        this.messageText = messageText;
        this.imageURL    = imageURL;
    }
}