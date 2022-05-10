public class BotRecord {

    @AuraEnabled 
    public List<BotField> fields { get;set; }
    //BotRecord class
    public BotRecord(List<BotField> fields) {
        this.fields = fields;
    }

}