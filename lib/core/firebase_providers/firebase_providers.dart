import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firebase_providers.g.dart';


@riverpod
FirebaseAuth firebaseAuth(Ref ref) {
  return FirebaseAuth.instance;
}



@riverpod
FirebaseChatCore firebaseChatCore(Ref ref) {
  ref.keepAlive();
  return FirebaseChatCore.instance;
}


@riverpod
CollectionReference userDb(Ref ref) {
  return FirebaseFirestore.instance.collection('users');
}

@riverpod
CollectionReference postDb(Ref ref) {
  return FirebaseFirestore.instance.collection('posts');
}