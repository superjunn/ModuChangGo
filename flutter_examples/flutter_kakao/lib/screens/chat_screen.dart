import 'package:flutter/material.dart';
import 'package:flutter_kakao/components/chat_card.dart';
import 'package:flutter_kakao/models/chat.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildChatScreenAppBar(),
      body: ListView(
        children: [
          ChatCard(chat: chats[0]),
        ],
      ),
    );
  }

  AppBar _buildChatScreenAppBar() => AppBar(
        title: Text("Chatting"),
      );
}
