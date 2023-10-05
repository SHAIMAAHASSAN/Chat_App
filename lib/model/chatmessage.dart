class ChatMessage {
   String messageContent;
   bool isSender;
    String time;
  ChatMessage(this.messageContent,this.isSender,this.time);
}
List<ChatMessage> messages = [
  ChatMessage("Hello!", true, "5:00 PM"),
  ChatMessage("Hi!", false, "5:01 PM"),
  ChatMessage("How are you ?", true, "5:02 PM"),
  ChatMessage("I'm fine. And You?", false, "5:03 PM"),
  ChatMessage("I'm fine.Where are you from?.", true, "5:04 PM"),
  ChatMessage("I'm from England,And You?" , false, "5:05 PM"),
  ChatMessage("I'm from Egypt,And You?" , true, "5:06 PM"),
  ChatMessage("I love Egypt very much,and wish visit it." , false, "5:07 PM"),
  ChatMessage("Welcome in Egypt,I will wait you to visit it" , true, "5:08 PM"),
  ChatMessage("Thanks,Nice to call you." , false, "5:09 PM"),
  ChatMessage("Nice to call you too,Bye." , true, "5:10 PM"),
  ChatMessage("Bye" , false, "5:10 PM"),
];