import 'package:flutter_project/pages/chat/conversation_page.dart';
import 'package:flutter_project/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../pages/chat/chat_page.dart';

class GroupTile extends StatefulWidget {

  final String email;
  final String groupId;
  final String groupName;

  GroupTile({
    Key? key, 
    required this.groupId, 
    required this.groupName, 
    required this.email
  }) : super(key: key);

  @override
  State<GroupTile> createState() => _GroupTileState();
}

class _GroupTileState extends State<GroupTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        nextScreen(context, ConversationPage(
          groupId: widget.groupId,
          groupName: widget.groupName,
          email: widget.email,
        ));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundColor: Theme.of(context).primaryColor,
            child: Text(
              widget.groupName.substring(0,1).toUpperCase(), 
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          title: Text(
            widget.groupName, 
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            "Entre na conversa como ${widget.email}", 
            style: const TextStyle(
              fontSize: 13,
            ),
          ),
        ),
      ),
    );
  }
}