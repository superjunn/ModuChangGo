import 'package:flutter/material.dart';
import 'package:flutter_kakao/models/chat.dart';

class ChatCard extends StatelessWidget {
  final Chat chat;

  const ChatCard({required this.chat});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(chat.image),
            ),
            title: Text(
              chat.title,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            subtitle: Text(chat.content),
          )
        ],
      ),
    );
  }
}
