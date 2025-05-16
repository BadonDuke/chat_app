import 'package:flutter/material.dart';

import 'Login_Page.dart';

void main() {
  runApp( Chatapp ());
}

class Chatapp extends StatelessWidget {
  const Chatapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chat App",
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: LoginPage(),
      );
  }
}
