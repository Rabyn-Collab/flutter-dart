import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm/core/firebase_providers/firebase_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

part 'user_service.g.dart';


class UserService {

  final CollectionReference userDb;
  final FirebaseChatCore firebaseChatCore;

  UserService(this.userDb, this.firebaseChatCore);



  Future<void> createUser({required String email, required String username}) async {
    try{

      await userDb.add({
        'email': email,
        'username': username
      });

    }on FirebaseException catch (err){
      throw '${err.message}';

    }
  }



  Stream<List<types.User>> usersStream()  {
    return firebaseChatCore.users();
  }




  Stream<types.User> userStream(String userId)  {
    return userDb.doc(userId).snapshots().map((e) {
      final map = e.data() as Map<String, dynamic>;
      return types.User(
          id: e.id
      );
    });
  }
}


@riverpod
UserService userService(Ref ref) {
  return UserService(ref.watch(userDbProvider), ref.watch(firebaseChatCoreProvider)) ;
}