import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:mvvm/feature/chat/view_model/chat_view_model.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;

class ChatPage extends ConsumerStatefulWidget {
  final types.Room room;

  const ChatPage({super.key, required this.room});

  @override
  ConsumerState createState() => _ChatPageState();
}

class _ChatPageState extends ConsumerState<ChatPage> {
  @override
  Widget build(BuildContext context) {

     final messages = ref.watch(streamMessagesProvider(room: widget.room));

    return Scaffold(
        appBar: AppBar(),
        body: messages.when(data: (data){
          return Chat(
              messages: data,
              onSendPressed: (text){

              },
              user: auth.FirebaseAuth.instance.currentUser!
          );
        }, error: (err, st) => Text('$err'), loading: () => CircularProgressIndicator())
    );
  }
}
