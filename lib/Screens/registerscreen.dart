import 'package:chat_app/Screens/signInscreen.dart';
import 'package:chat_app/Screens/usersscreen.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
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
                        backgroundColor: Colors.lightBlue,
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 10,
                      width: 10,
                    ),
                    ElevatedButton(
                      child: const Text('Register'),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),),
                      onPressed: () {
                        RouteSettings routeSettings =
                        RouteSettings(arguments: {"text"});

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignInScreen(),
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
