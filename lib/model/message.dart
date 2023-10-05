class Message{
  String message;
  Message(this.message);
  @override
  String toString() {
    return message;
  }
  
}

List<Message>sendMessage=[
  Message("Hello"),
  //Message(""),
  Message("How are you?."),
 // Message(""),
  Message("I'm fine.Where are you from?."),

];
List<Message> receiveMessage=[
  //Message(""),
  Message("Hi!"),
 // Message(""),
  Message("I'm fine.,And you?"),
 // Message(""),
  Message("I'm from Egypt.,And You?")
];

