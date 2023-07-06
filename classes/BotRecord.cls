public class BotRecord {
//Class Comment on Apex
    @AuraEnabled 
    public List<BotField> fields { get;set; }
    
    public BotRecord(List<BotField> fields) {
        this.fields = fields;
    }

}