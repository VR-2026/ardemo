public interface BotHandler {
    //Checks   
    BotResponse handle(String utterance, String[] params, Map<String, String> session, String fileName, String fileContent);  
}