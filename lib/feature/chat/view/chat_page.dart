import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:mvvm/feature/chat/view_model/chat_view_model.dart';
import 'package:mvvm/feature/notification/notification_service.dart';

class ChatPage extends ConsumerStatefulWidget {
  final String roomId;
  const ChatPage({super.key, required this.roomId});

  @override
  ConsumerState createState() => _ChatPageState();
}

class _ChatPageState extends ConsumerState<ChatPage> {
  @override
  Widget build(BuildContext context) {
    final roomState = ref.watch(getRoomProvider(roomId: widget.roomId));
    return Scaffold(
      body: roomState.maybeWhen(
          data: (data){
            return ChatWidget(room: data);
          },
          orElse: () => SizedBox.shrink()),
    );
  }
}






class ChatWidget extends ConsumerStatefulWidget {
  final types.Room room;

  const ChatWidget({super.key, required this.room});

  @override
  ConsumerState<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends ConsumerState<ChatWidget> {

  // Convert FirebaseAuth user to types.User


  @override
  Widget build(BuildContext context) {
    final messages = ref.watch(streamMessagesProvider(room: types.Room(id: widget.room.id, type: types.RoomType.direct, users: [])));
    final firebaseUser = FirebaseAuth.instance.currentUser;
    final chatUser = types.User(
      id: firebaseUser!.uid,
      firstName: firebaseUser.displayName,
      imageUrl: firebaseUser.photoURL,
    );

    final friendUser = widget.room.users.firstWhere((user) => user.id != firebaseUser.uid);
    return messages.when(
      data: (data) {
        return Chat(
          messages: data,
          onSendPressed: (text) {
            ref.read(chatViewModelProvider.notifier).sendMessage(text, widget.room);
         //   NotificationService.sendNotification(text.text, 'please see my message', friendUser.id, widget.room.id);
          },
          user: chatUser,
          showUserAvatars: true,
          showUserNames: true,
        );
      },
      error: (err, st) => Text('$err'),
      loading: () => CircularProgressIndicator(),
    );
  }
}

