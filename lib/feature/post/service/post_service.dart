import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm/core/firebase_providers/firebase_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'post_service.g.dart';


class PostService {

  final CollectionReference postDb;

  PostService(this.postDb);



  Future<void> createPost({required String title, required String description, required String imageUrl, required String userId}) async {
    try{
       await postDb.add({
         'title': title,
         'description': description,
         'imageUrl': imageUrl,
         'userId': userId
       });
    }on FirebaseException catch (err){
      throw '${err.message}';

    }
  }



}

@riverpod
PostService postService(Ref ref) {
  return  PostService(ref.watch(postDbProvider)); ;
}


