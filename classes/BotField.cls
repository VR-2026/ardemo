public class BotField {
//Commment added recently
    @AuraEnabled public String name { get;set; }
    @AuraEnabled public String value { get;set; }
    @AuraEnabled public String linkURL { get;set; }
    //New Line
    
    
    
    public BotField(String name, String value) {
        this.name = name;
        this.value = value;
    }
    //Test Change Added Now
    public BotField(String name, String value, string linkURL) {
        this.name = name;
        this.value = value;
        this.linkURL = linkURL;
    }

}