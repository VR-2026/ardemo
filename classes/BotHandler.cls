public interface BotHandler {
//New change made today
//New Comment
    BotResponse handle(String utterance, String[] params, Map<String, String> session, String fileName, String fileContent);

}
