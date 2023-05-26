public interface BotHandler {
//New change made now 

    BotResponse handle(String utterance, String[] params, Map<String, String> session, String fileName, String fileContent);
//Last line
}