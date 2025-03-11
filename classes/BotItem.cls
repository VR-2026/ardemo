public class BotItem {
//Test Apex Change made here
//Test Change made now
    @AuraEnabled public String name { get;set; }
    @AuraEnabled public String linkURL { get;set; }
    
    public BotItem(String name) {
        this.name = name;
    }
    //TOS
    public BotItem(String name, string linkURL) {
        this.name = name;
        this.linkURL = linkURL;
    }
//EOF
}