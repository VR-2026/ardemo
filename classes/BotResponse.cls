public class BotResponse {
//Test Check here

//Comment Made Now and here
    @AuraEnabled public List<BotMessage> messages { get; set; }
    @AuraEnabled public Map<String, String> session { get; set; }
    
    public BotResponse() {
    }
    public BotResponse(BotMessage[] messages) {
        this.messages = messages;
    }

    public BotResponse(List<BotMessage> messages, Map<String, String> session) {
        this.messages = messages;
        this.session = session;
    }
    
    public BotResponse(BotMessage message) {
        this.messages = new BotMessage[]{message};
    }
    public BotResponse(BotMessage message, Map<String, String> session) {
        this.messages = new BotMessage[]{message};
        this.session = session;
    }
    //Check Comment
}