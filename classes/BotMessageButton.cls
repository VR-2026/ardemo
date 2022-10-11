public class BotMessageButton {
//This is a new class change made in Line 2
//Line 3
    @AuraEnabled public String label { get;set; }
    @AuraEnabled public String value { get;set; }
    
    public BotMessageButton(String label, String value) {
        this.label = label;
        this.value = value;
    }
    
}