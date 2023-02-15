import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsapp_clone/info.dart';
import 'package:whatsapp_clone/widgets/mymessageCard.dart';
import 'package:whatsapp_clone/widgets/senderMessage_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          return Mymessage(
              message: messages[index]['text'].toString(),
              time: messages[index]['time'].toString());
        }
        return Sendermessage(
            message: messages[index]['text'].toString(),
            time: messages[index]['time'].toString());
      },
    );
  }
}
