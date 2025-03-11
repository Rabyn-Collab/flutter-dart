import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm/core/firebase_providers/firebase_providers.dart';
import 'package:mvvm/feature/post/view_model/post_view_model.dart';
import 'package:cached_network_image/cached_network_image.dart';


class PostList extends ConsumerWidget {
  const PostList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postState = ref.watch(postsStreamProvider);
    final user = ref.watch(firebaseAuthProvider).currentUser;
    // print(user?.emailVerified);
    return postState.when(
        data: (data){
          return ListView.separated(
            separatorBuilder: (c,i) => Divider(),
            shrinkWrap: true,
            itemCount: data.length,
            itemBuilder: (context, index) {
              final post = data[index];
              return ListTile(
                leading: CachedNetworkImage(
                       height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                    errorWidget: (c,s,d) => const Icon(Icons.error),
                    imageUrl: post.imageUrl
                ),
                title: Text(post.title),
                subtitle: Text(post.description),
                trailing:
                user?.uid == post.userId ?  IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz)): null,
              );

            },
          );
        },
        error: (error, stackTrace) {
          return Center(child: Text(error.toString()));
        }, loading: () => const Center(child: CircularProgressIndicator(),));
  }
}