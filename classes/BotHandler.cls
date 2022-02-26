public interface BotHandler {
    //Adding a comment here
    BotResponse handle(String utterance, String[] params, Map<String, String> session, String fileName, String fileContent);
    
}