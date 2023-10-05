import 'package:chat_app/model/message.dart';
import 'package:flutter/material.dart';
class SendMessge extends StatelessWidget {
   SendMessge();

  

  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
      child: Align(
          alignment: Alignment.topRight,
          child: Container(
            child: Text(sendMessage.map((e) => e.message).toString()),
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
      color: Colors.blue[200]),
    )));
  }
}
class ReceiveMessage extends StatelessWidget {
   ReceiveMessage();


  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
        child: Align(
            alignment: Alignment.topLeft,
            child: Container(
              child: Text(receiveMessage.map((e) => e.message).toString()),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white),
            )));
  }
}
