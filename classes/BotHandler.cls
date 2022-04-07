public interface BotHandler {

//New change
    BotResponse handle(String utterance, String[] params, Map<String, String> session, String fileName, String fileContent);
//End of L..
}