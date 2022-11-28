public class BotRecord {

//Samp

    @AuraEnabled 
    public List<BotField> fields { get;set; }
//New Line    
    public BotRecord(List<BotField> fields) {
        this.fields = fields;
    }

}