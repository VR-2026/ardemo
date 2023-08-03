public interface BotHandler {
    //Check Comments Today
    //Added a comment here - Change made on A3
    BotResponse handle(String utterance, String[] params, Map<String, String> session, String fileName, String fileContent);  
}