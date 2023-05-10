public interface BotHandler {
    //Added a comment here today
    BotResponse handle(String utterance, String[] params, Map<String, String> session, String fileName, String fileContent);
    
}