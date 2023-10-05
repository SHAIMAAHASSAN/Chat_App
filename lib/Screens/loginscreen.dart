import 'package:chat_app/Screens/registerscreen.dart';
import 'package:chat_app/Screens/signInscreen.dart';
import 'package:chat_app/Screens/usersscreen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
    body: Center(
      child: Column(
       // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(image: AssetImage("images/logo.png")),
          ),
          Container(
            width: 300,
            height: 50,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8),

              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) =>SignInScreen(),
                ));

                // context.pushReplacement('/usersscreen');
              }, child:Text("Sign In"),style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),),),
            ),
          ),
          Container( width: 300,
            height: 50,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(10),
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) =>RegisterScreen(),
              ));
            }, child:Text("Rregister"),style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),)),
          ),

        ],
      ),

    ),);
  }
}
