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
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: const ChatPage(),
      );
  }
}
