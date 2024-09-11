public interface BotHandler {
    //Comments Jul19
    //New checkin changes   
    BotResponse handle(String utterance, String[] params, Map<String, String> session, String fileName, String fileContent);  
}