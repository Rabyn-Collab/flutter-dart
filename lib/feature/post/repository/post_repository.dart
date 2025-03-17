import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm/feature/post/service/post_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'post_repository.g.dart';


class PostRepository{


 final PostService postService;

 PostRepository(this.postService);

 Future<void> createPost({required String title, required String description, required String imageUrl}) async {
     await postService.createPost(title: title, description: description, imageUrl: imageUrl);
 }

 Future<void> updatePost({required String title,required String id, required String description, required String imageUrl}) async {
  await postService.updatePost(title: title, id: id, description: description, imageUrl: imageUrl);
 }

 Future<void> removePost({required String id}) async {
    await postService.removePost(id: id);
 }



}


@riverpod
PostRepository postRepository (Ref ref) {
  return  PostRepository(ref.watch(postServiceProvider));
}


