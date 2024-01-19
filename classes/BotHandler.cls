public interface BotHandler {
    //Check Comments Made J20
    //NewLine
    //EOlL
    BotResponse handle(String utterance, String[] params, Map<String, String> session, String fileName, String fileContent);  
}