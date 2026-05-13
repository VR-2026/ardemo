public class BotMessageButton {
//Comments made now
    @AuraEnabled public String label { get;set; }
    @AuraEnabled public String value { get;set; }
    public BotMessageButton(String label, String value) {
        this.label = label;
        //Check

        this.value = value;
    }    
}