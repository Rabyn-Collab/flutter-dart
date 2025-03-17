
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm/feature/post/model/post.dart';
import 'package:mvvm/feature/post/repository/post_repository.dart';
import 'package:mvvm/feature/post/service/post_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_view_model.g.dart';



@riverpod
class PostMutation extends _$PostMutation {
  @override
  FutureOr<void> build() {
  }

  //AsyncLoading AsyncData AsyncError

  Future<void> createPost({required String title, required String description, required String imageUrl}) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
            () => ref.read(postRepositoryProvider).createPost(title: title, description: description, imageUrl: imageUrl));
  }

  Future<void> updatePost({required String title,required String id, required String description, required String imageUrl}) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
            () => ref.read(postRepositoryProvider).updatePost(title: title, id: id, description: description, imageUrl: imageUrl));
  }


  Future<void> removePost({required String id}) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
            () => ref.read(postRepositoryProvider).removePost(id: id));
  }


}


@riverpod
Stream<List<Post>> postsStream(Ref ref) {
  return  ref.watch(postServiceProvider).postStream();
}


@riverpod
Stream<List<Post>> userPostsStream(Ref ref, {required String userId}) {
  return  ref.watch(postServiceProvider).getUsersPost(userId);
}
