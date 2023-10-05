import 'package:chat_app/Screens/chatScreen.dart';
import 'package:chat_app/Screens/loginscreen.dart';
import 'package:chat_app/Screens/usersscreen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp( MyApp());
}

GoRouter router() {
  return GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/usersscreen',
        builder: (context, state) => const UsersScreen(),
        routes: [
         // GoRoute(
          //  path:'/catalog',
          //  builder: (context, state) => const ChatScreen(),
         // ),
        ],
      ),
    ],
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});




  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(

      routerConfig: router(),
    );
  }
}

