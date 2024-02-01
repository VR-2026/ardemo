public class BotItem {
//Commented Today Change
    @AuraEnabled public String name { get;set; }
    @AuraEnabled public String linkURL { get;set; }
    
    public BotItem(String name) {
        this.name = name;
    }
    //NewLine
    public BotItem(String name, string linkURL) {
        this.name = name;
        this.linkURL = linkURL;
    }

}