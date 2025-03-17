import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;


class ChatService{

  final FirebaseChatCore chatCore;

  ChatService(this.chatCore);


  Future<void> createRoom (types.User user) async{
    try{
      await chatCore.createRoom(user);

    }on FirebaseException catch (err){
      throw err.message ?? 'something went wrong';
    }

  }




}