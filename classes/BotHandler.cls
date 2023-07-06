public interface BotHandler {
    //comment for testing purpose
    BotResponse handle(String utterance, String[] params, Map<String, String> session, String fileName, String fileContent);
    
}