public interface BotHandler {
    //Comments May 24-25
    BotResponse handle(String utterance, String[] params, Map<String, String> session, String fileName, String fileContent);  
}