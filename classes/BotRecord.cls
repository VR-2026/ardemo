public class BotRecord {
    @AuraEnabled 
    public List<BotField> fields { get;set; }
//New L
    public BotRecord(List<BotField> fields) {
        this.fields = fields;
    }
}
