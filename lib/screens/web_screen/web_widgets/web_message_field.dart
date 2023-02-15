import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsapp_clone/colors.dart';

class WebMessageField extends StatelessWidget {
  const WebMessageField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      // padding: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: const BoxDecoration(
          color: appBarColor,
          border: Border(bottom: BorderSide(color: dividerColor))),
      child: Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.emoji_emotions_outlined,
                color: Colors.grey,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.attach_file,
                color: Colors.grey,
              )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 15),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20),
                  filled: true,
                  fillColor: searchBarColor,
                  hintText: "Write a new message",
                  hintStyle: const TextStyle(fontSize: 14),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide:
                          BorderSide(width: 0, style: BorderStyle.none)),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
