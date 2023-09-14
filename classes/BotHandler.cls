public interface BotHandler {
    //Check Comments Made Today
    //Added a comment - Change made on A2
    BotResponse handle(String utterance, String[] params, Map<String, String> session, String fileName, String fileContent);  
}