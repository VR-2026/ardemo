public class BotRecord {
//New comment
    @AuraEnabled 
    public List<BotField> fields { get;set; }
    //test
    
    
    public BotRecord(List<BotField> fields) {
        this.fields = fields;
    }

}