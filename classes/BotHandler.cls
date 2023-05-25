public interface BotHandler {
    //Added a comment here today
    BotResponse handle(String utterance, String[] params, Map<String, String> session, String fileName, String fileContent);
    
    //Check Statements
    //Added a comment here - Change made on M24
    BotResponse handle(String utterance, String[] params, Map<String, String> session, String fileName, String fileContent);  
}