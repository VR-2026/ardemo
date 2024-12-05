public interface BotHandler {
    //Comments Nov12
    
    //New checkin now
    
    
    //Check Comments   
    BotResponse handle(String utterance, String[] params, Map<String, String> session, String fileName, String fileContent);  
}