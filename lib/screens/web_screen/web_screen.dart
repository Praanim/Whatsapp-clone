import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsapp_clone/screens/web_screen/web_widgets/web_chat_appbar.dart';
import 'package:whatsapp_clone/screens/web_screen/web_widgets/web_message_field.dart';
import 'package:whatsapp_clone/screens/web_screen/web_widgets/web_profile_bar.dart';
import 'package:whatsapp_clone/screens/web_screen/web_widgets/web_search_bar.dart';
import 'package:whatsapp_clone/widgets/chat_list.dart';
import 'package:whatsapp_clone/widgets/contacts_list.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [WebProfileBar(), MyWidget(), ContactsList()],
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'images/backgroundImage.png',
                  ),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              //web_chat_appbar
              WebChatAppBar(),
              Expanded(child: ChatList()),
              WebMessageField()
            ],
          ),
        ),

        // Column(
        //   mainAxisSize: MainAxisSize.min,
        //   children: [
        //     //web profile bar

        //     //web search bar
        //     Expanded(child: ContactsList())
        //   ],
        // )
        //web
      ],
    ));
  }
}
