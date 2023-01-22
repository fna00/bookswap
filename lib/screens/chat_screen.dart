import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:bookswa/chat/messages.dart';
import 'package:bookswa/chat/new_message.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('FlutterChat'),
        actions: [
          IconButton(
            onPressed: () async {
              FirebaseAuth _auth = FirebaseAuth.instance;

              await _auth.signOut();
            },
            icon: Icon(Icons.exit_to_app),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: Messages(),
              ),
              NewMessage(),
            ],
          ),
        ),
      ),
    );
  }
}
