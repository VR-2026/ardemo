public class BotRecord {
//Simple Change
//
// Commented Lines
    @AuraEnabled 
    public List<BotField> fields { get;set; }
//Get
    public BotRecord(List<BotField> fields) {
        this.fields = fields;
//EoL

    }
}