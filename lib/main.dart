import 'package:chat_app/widgets/counter_stateful_demo.dart';
import 'package:flutter/material.dart';

import 'Chat_Page.dart';
import 'Login_Page.dart';

void main() {
  runApp( Chatapp ());
}

class Chatapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chat App",
      theme: ThemeData(
        canvasColor: Colors.transparent,
        primarySwatch: Colors.purple, appBarTheme: AppBarTheme(backgroundColor: Colors.blue, foregroundColor: Colors.black)),
      home: LoginPage(),
      routes: {
        '/chat': (context) => ChatPage()
      },
      );
  }
}
 