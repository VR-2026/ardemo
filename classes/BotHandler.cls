public interface BotHandler {
    //Adding a comment here - Mar 27
    BotResponse handle(String utterance, String[] params, Map<String, String> session, String fileName, String fileContent);
    
}
