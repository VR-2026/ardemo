public class BotRecord {
//New comment and New change made to this line
    @AuraEnabled 
    public List<BotField> fields { get;set; }
    //tst
    public BotRecord(List<BotField> fields) {
        this.fields = fields;
    }

}