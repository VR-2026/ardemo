public class BotField {
//Changed Here
    @AuraEnabled public String name { get;set; }
    @AuraEnabled public String value { get;set; }
    //New Line Change     
    @AuraEnabled public String linkURL { get;set; }
    //New Line Change Made Now
    public BotField(String name, String value) {
        this.name = name;
        this.value = value;
    }
    //Heer
    public BotField(String name, String value, string linkURL) {
        this.name = name;
        this.value = value;
        this.linkURL = linkURL;
    }

}