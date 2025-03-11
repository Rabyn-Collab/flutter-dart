import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm/core/firebase_providers/firebase_providers.dart';
import 'package:mvvm/feature/post/model/post.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'post_service.g.dart';


class PostService {

  final CollectionReference postDb;
  final FirebaseAuth firebaseAuth;

  PostService(this.postDb, this.firebaseAuth);



  Future<void> createPost({required String title, required String description, required String imageUrl}) async {
    try{
       await postDb.add({
         'title': title,
         'description': description,
         'imageUrl': imageUrl,
         'userId': firebaseAuth.currentUser!.uid
       });
    }on FirebaseException catch (err){
      throw '${err.message}';
    }
  }


  // Future<void> queryPosts({required String title, required String description, required String imageUrl}) async {
  //   try{
  //     await postDb.where('age', isGreaterThan: 90).get();
  //   }on FirebaseException catch (err){
  //     throw '${err.message}';
  //   }
  // }

  Future<void> updatePost({required String title,required String id, required String description, required String imageUrl}) async {
    try{
      await postDb.doc(id).update({
        'title': title,
        'description': description,
        'imageUrl': imageUrl,
      });
    }on FirebaseException catch (err){
      throw '${err.message}';
    }
  }

  Future<void> removePost({required String id}) async {
    try{
      await postDb.doc(id).delete();
    }on FirebaseException catch (err){
      throw '${err.message}';
    }
  }


  //querySnapshot, DocumentSnapShot

  Stream<List<Post>> postStream()  {
    return postDb.snapshots().map((snapShot) => snapShot.docs.map((doc) {
      final json = doc.data() as Map<String, dynamic>;
      return Post(
          title: json['title'] ,
          description:  json['description'],
          imageUrl: json['imageUrl'],
          id: doc.id,
          userId: json['userId']
      );
    }).toList());
  }



}

@riverpod
PostService postService(Ref ref) {
  return  PostService(ref.watch(postDbProvider), ref.watch(firebaseAuthProvider));
}


