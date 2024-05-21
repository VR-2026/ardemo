public interface BotHandler {
    //Comments May 2024
    
    
    BotResponse handle(String utterance, String[] params, Map<String, String> session, String fileName, String fileContent);  
}