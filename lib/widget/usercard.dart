import 'package:chat_app/Screens/chatScreen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UserCard extends StatelessWidget {
  ImageProvider image;
  String name;
  String status;
  String time;
 UserCard(this.image,this.name,this.status,this.time);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){  Navigator.push(context, MaterialPageRoute(
        builder: (context) =>ChatScreen(image,name),
      ));},
      child: Container(margin: EdgeInsets.all(20),
        child: Row(
           crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
         // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: CircleAvatar(backgroundImage: image,maxRadius: 30,),
            ),
           SizedBox(width: 30,height: 50,),
            //second children of row
            Expanded(
              child: Column(
               // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      name,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,decoration: TextDecoration.none,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(status,
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Colors.black38,
                          decoration: TextDecoration.none,)),
                  ),
                   Align(
                    alignment: Alignment.centerRight,
                   child: Padding(
                     padding: const EdgeInsets.only(left: 10),
                     child: Text(time,style: TextStyle(
                       fontSize: 12,
                       fontWeight: FontWeight.normal,
                       color: Colors.black38,
                       decoration: TextDecoration.none,)),
                   ),
                   )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
