public interface BotHandler {
    //Check Comments F20
    BotResponse handle(String utterance, String[] params, Map<String, String> session, String fileName, String fileContent);  
}