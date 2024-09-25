import 'package:chat_app/Models/message_model.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CustomChatBubble extends StatelessWidget {
  const CustomChatBubble({
    super.key, required this.message,
  });
  final MessageModel message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.only(left: 16,right: 28,top: 28 , bottom: 28),
        margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
        decoration: const BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
              bottomRight: Radius.circular(32),
            )
        ),
        child: Text(message.message,style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}


class CustomChatBubbleForFriend extends StatelessWidget {
  const CustomChatBubbleForFriend({
    super.key, required this.message,
  });
  final MessageModel message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: const EdgeInsets.only(left: 16,right: 28,top: 28 , bottom: 28),
        margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
        decoration: const BoxDecoration(
            color: Color(0xff006D84),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
              bottomLeft: Radius.circular(32),
            )
        ),
        child: Text(message.message,style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}