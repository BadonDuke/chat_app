import "package:chat_app/models/chat_message_enity.dart";
import "package:chat_app/widgets/chat_bubble.dart";
import "package:chat_app/widgets/chat_input.dart";
import "package:flutter/material.dart";

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});


  @override
  Widget build(BuildContext context) {
    final username = ModalRoute.of(context)!.settings.arguments as  String;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('hi $username'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
                print('icon pressed');
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index){
              return ChatBubble(alignment:index %2 == 0 ? Alignment.centerLeft : Alignment.centerRight,entity: ChatMessageEntity(
                id: '1234',
                text: 'hi this is duke',
                createdAt: DateTime.now().millisecondsSinceEpoch,
                author: Author(userName: 'dukebadon')
            
              ),);
            }),
            // child: ListView(
            //   // children: [
            //   //   // ChatBubble(alignment:Alignment.centerLeft, message:"hello this is duke"),
            //   //   // ChatBubble(alignment:Alignment.centerRight, message: "hello"),
            //   // ],
            // ),
          ),
           ChatInput(),
        ],
      ),
    );
  }
}
