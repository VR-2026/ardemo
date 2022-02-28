public interface BotHandler {
    //Interface declaration goes here...
    BotResponse handle(String utterance, String[] params, Map<String, String> session, String fileName, String fileContent);
 
 
//End of Line..
}