public interface BotHandler {
//New change made now 

    BotResponse handle(String utterance, String[] params, Map<String, String> session, String fileName, String fileContent);
    
    //Check Statements
    //Added a comment here - Change made on M24
    //Check Statement Today
    //Added a comment here - Change made on A24
    BotResponse handle(String utterance, String[] params, Map<String, String> session, String fileName, String fileContent);  
}