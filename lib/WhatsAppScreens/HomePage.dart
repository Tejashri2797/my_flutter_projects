import 'package:flutter/material.dart';

import 'ChatBox.dart';
import 'WhatsAppData.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.separated(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => ChatBox(),
                ),
              );
            },
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(data[index]['image']),
            ),
            title: Text(data[index]['title']),
            subtitle: Text(data[index]['subtitle']),
            trailing: Text(data[index]['date']),
          );
        },
        separatorBuilder: (context, index) => const Divider(
          height: 2,
          thickness: 2,
        ),
      ),
    );
  }
}
