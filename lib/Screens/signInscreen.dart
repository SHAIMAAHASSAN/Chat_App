import 'package:chat_app/Screens/loginscreen.dart';
import 'package:chat_app/Screens/usersscreen.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(40),
          padding: EdgeInsets.all(40),
          child: Column(
            children: [
              Image(image: AssetImage("images/logo.png")),
              Container(
                width: 500,
                margin: EdgeInsets.all(10),
                child: TextField(
                  decoration: const InputDecoration(
                    filled: true,
                    labelText: 'Username',
                  ),
                ),
              ),
              Container(
                width: 500,
                margin: EdgeInsets.all(10),
                child: TextField(
                  decoration: const InputDecoration(
                    filled: true,
                    labelText: 'Password',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(3),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      child: const Text(
                        'CANCEL',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.orangeAccent,
                      ),
                      onPressed: () { Navigator.push(context, MaterialPageRoute(
                        builder: (context) =>LoginScreen(),
                      ));},
                    ),
                    SizedBox(
                      height: 10,
                      width: 10,
                    ),
                    ElevatedButton(
                      child: const Text('Sign In'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),),
                      onPressed: () {
                        RouteSettings routeSettings =
                        RouteSettings(arguments: {"text"});

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UsersScreen(),
                            settings: routeSettings,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
