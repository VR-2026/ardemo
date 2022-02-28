public interface BotHandler {
    //Modifying this line
    BotResponse handle(String utterance, String[] params, Map<String, String> session, String fileName, String fileContent);
    //Changing the comment references
}
