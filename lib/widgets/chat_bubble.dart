import "package:chat_app/models/chat_message_enity.dart";
import "package:flutter/material.dart";
import '../services/auth_service.dart';


class ChatBubble extends StatelessWidget {
  final ChatMessageEntity entity;
  final Alignment alignment;
 const ChatBubble({
  super.key,
  required this.alignment,
  required this.entity,
});


  @override
  Widget build(BuildContext context) {
    bool isAuthor = entity.author.userName == AuthService().getUserName();;
    return Align(
                  alignment: alignment,
                  child: Container(
                    constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.6),
                    padding: EdgeInsets.all(24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '${entity.text}',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        if(entity.imageUrl != null)
                       Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(entity.imageUrl!)),
                      borderRadius: BorderRadius.circular(12)),
                        )
                      ],
                    ),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: isAuthor ? Theme.of(context).primaryColor : Colors.black87,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12))),
                  ),
                );
                
  }
}