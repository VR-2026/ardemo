public interface BotHandler {
    //Check Statement Today
    //Added a comment here - Change made on A24
    BotResponse handle(String utterance, String[] params, Map<String, String> session, String fileName, String fileContent);  
}