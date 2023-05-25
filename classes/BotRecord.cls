public class BotRecord {

//Sample Checkin Change

    @AuraEnabled 
    public List<BotField> fields { get;set; }
//New Line added

    public BotRecord(List<BotField> fields) {
        this.fields = fields;
    }

}