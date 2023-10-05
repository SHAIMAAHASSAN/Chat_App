import 'package:chat_app/model/chatmessage.dart';
import 'package:chat_app/model/message.dart';
import 'package:chat_app/widget/messagecard.dart';
import 'package:chat_app/widget/usercard.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  ImageProvider image;
  String name;
  //String sendMessage;
  // String receiveMessage;
  ChatScreen(this.image, this.name);

  @override
  Widget build(BuildContext context) {
    List<Message> newList = [];
    for (var i = 0; i < sendMessage.length; i++) {
      newList.add(sendMessage[i]);
      newList.add(receiveMessage[i]);
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.lightBlue,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                CircleAvatar(
                  backgroundImage: image,
                  maxRadius: 20,
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Online",
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 13),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.settings,
                  color: Colors.black54,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(
                        Icons.emoji_emotions,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Write message...",
                        hintStyle: TextStyle(color: Colors.black54),
                        suffixIcon: Icon(Icons.camera_alt),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 18,
                    ),
                    backgroundColor: Colors.blue,
                    elevation: 0,
                  ),
                ],
              ),
            ),
          ),

          // ListView.builder(itemCount: newList.length,itemBuilder: (context, index) {
          //  final  message = newList[index].toString();

          // return Text(newList[index].toString());

          //}
          // )
          Container(
            height: 500,
            child: ListView.builder(
              itemCount: messages.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              // physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  padding:
                      EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 5),
                  child: Align(
                    alignment: (messages[index].isSender == true
                        ? Alignment.topRight
                        : Alignment.topLeft),
                    child: Container(
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: (messages[index].isSender == true
                            ? Colors.blue[200]
                            : Colors.grey.shade200),
                      ),
                      child: FittedBox(
                        child: Column(
                          children: [
                            Text(
                              messages[index].messageContent,
                              style: TextStyle(fontSize: 15),
                            ),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  padding: EdgeInsets.only(top: 2,left:10,right: 5),
                                  margin: EdgeInsets.only(
                                      left: 10, top: 2, right: 5),
                                  child: Text(
                                    messages[index].time,
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
