import "package:chat_app/models/chat_message_enity.dart";
import "package:chat_app/widgets/chat_bubble.dart";
import "package:chat_app/widgets/chat_input.dart";
import "package:flutter/material.dart";

class ChatPage extends StatelessWidget {
 ChatPage({super.key});

List<ChatMessageEntity> _messages = [
  ChatMessageEntity(text: 'first text', id: '1', createdAt: 21212121, author: Author(userName: 'dukebadon')),
  ChatMessageEntity(text: 'second text', id: '1', createdAt: 21212121, author: Author(userName: 'dukebadon'), imageUrl: 'https://3009709.youcanlearnit.net/Alien_LIL_131338.png'),
  ChatMessageEntity(text: 'third text', id: '1', createdAt: 21212121, author: Author(userName: 'Jinxie'))
];
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
              itemCount: _messages.length,
              itemBuilder: (context, index){
              return ChatBubble(alignment: _messages[index].author.userName == 'dukebadon' ? Alignment.centerRight : Alignment.centerLeft,
              entity: _messages[index]);
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
