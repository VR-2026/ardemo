public class BotRecord {
//Simplest Change - Commented Line

    @AuraEnabled 
    public List<BotField> fields { get;set; }

    public BotRecord(List<BotField> fields) {
        this.fields = fields;
//EoL
    }
}