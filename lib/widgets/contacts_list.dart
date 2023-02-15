import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsapp_clone/info.dart';
import 'package:whatsapp_clone/screens/mobile_screens.dart/mobile_chat_screen.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MobileChatScreen(),
                  ));
                },
                child: ListTile(
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      info[index]['message'].toString(),
                      style: const TextStyle(fontSize: 15),
                    ),
                  ),
                  title: Text(
                    info[index]['name'].toString(),
                    style: const TextStyle(fontSize: 18),
                  ),
                  trailing: Text(
                    info[index]['time'].toString(),
                    style: const TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  leading: CircleAvatar(
                    backgroundImage:
                        NetworkImage(info[index]['profilePic'].toString()),
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
                thickness: .5,
              )
            ],
          );
        },
      ),
    );
  }
}
