import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm/core/firebase_providers/firebase_providers.dart';
import 'package:mvvm/feature/post/view_model/post_view_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:mvvm/routes/route_enum.dart';


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
                user?.uid == post.userId ?  IconButton(onPressed: (){

                  showDialog(context: context, builder: (context) {
                    return AlertDialog(
                      title: Text('edit or remove post'),
                      actions: [
                        IconButton(onPressed: (){
                          context.pop();
                          context.pushNamed(AppRoute.editPost.name, extra: post);
                        }, icon: Icon(Icons.edit)),
                        IconButton(onPressed: (){
                          context.pop();
                          ref.read(postMutationProvider.notifier).removePost(id: post.id);
                        }, icon: Icon(Icons.delete)),
                      ],
                    );
                  });

                }, icon: Icon(Icons.more_horiz)): null,
              );

            },
          );
        },
        error: (error, stackTrace) {
          return Center(child: Text(error.toString()));
        }, loading: () => const Center(child: CircularProgressIndicator(),));
  }
}