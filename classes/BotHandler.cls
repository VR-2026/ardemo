public interface BotHandler {
//New change mad etoday

    BotResponse handle(String utterance, String[] params, Map<String, String> session, String fileName, String fileContent);

}