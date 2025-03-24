import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm/core/firebase_providers/firebase_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chat_service.g.dart';


class ChatService{

  final FirebaseChatCore chatCore;

  ChatService(this.chatCore);


  Future<types.Room> createRoom (types.User user) async{
    try{
      final room = await chatCore.createRoom(user);
      return room;
    }on FirebaseException catch (err){
      throw err.message ?? 'something went wrong';
    }

  }

  Future<void> sendMessage (types.PartialText message, types.Room room) async {
    try{
       chatCore.sendMessage(message, room.id);
    }on FirebaseException catch (err){
      throw err.message ?? 'something went wrong';
    }

  }


  Stream<List<types.Room>> getRooms () {
    return chatCore.rooms();
  }


  Stream<List<types.Message>> getMessage (types.Room room) {
    return chatCore.messages(room);
  }



}

@riverpod
ChatService  chatService(Ref ref) {
  return ChatService(ref.watch(firebaseChatCoreProvider));
}