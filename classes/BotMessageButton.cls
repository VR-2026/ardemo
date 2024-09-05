public class BotMessageButton {
//Comments here

    @AuraEnabled public String label { get;set; }
    @AuraEnabled public String value { get;set; }
    public BotMessageButton(String label, String value) {
        this.label = label;
        //Check Change
        this.value = value;
    }
    
}