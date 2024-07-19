public virtual class BotMessage {

//Apr 24 - New Change

    @AuraEnabled public String author { get;set; }
    @AuraEnabled public String messageText { get;set; }
    @AuraEnabled public List<BotRecord> records { get;set; }
    @AuraEnabled public List<BotItem> items { get;set; }
    @AuraEnabled public List<BotMessageButton> buttons { get;set; }
    @AuraEnabled public String imageURL { get;set; }

    public BotMessage() {
    }
    //Test Change Made Now
    
    public BotMessage(String author, String messageText) {
        this.author = author;
        this.messageText = messageText;
    }

    public BotMessage(String author, String messageText, List<BotRecord> records) {
        this.author = author;
        this.messageText = messageText;
        this.records = records;
    }

    public BotMessage(String author, String messageText, List<BotItem> items) {
        this.author = author;
        this.messageText = messageText;
        this.items = items;
    }

    public BotMessage(String author, String messageText, List<BotMessageButton> buttons) {
        this.author = author;
        this.messageText = messageText;
        this.buttons = buttons;
    }
//EOL
    public BotMessage(String author, String messageText, String imageURL) {
        this.author = author;
        this.messageText = messageText;
        this.imageURL = imageURL;
    }


}