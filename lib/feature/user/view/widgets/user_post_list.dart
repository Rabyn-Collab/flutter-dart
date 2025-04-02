import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm/feature/photo/photo_view_page.dart';
import 'package:mvvm/feature/post/view_model/post_view_model.dart';


class UserPostList extends ConsumerWidget {
  final String id;
  const UserPostList({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postsState = ref.watch(userPostsStreamProvider(userId: id));
    return postsState.when(
        data: (data){
          return data.isEmpty ? Center(child: Text('No posts yet !', style: TextStyle(fontSize: 17) ,),) : GridView.builder(
             itemCount: data.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                mainAxisExtent: 150,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10
              ),
              itemBuilder: (context, index){
               final post = data[index];
               return InkWell(
                 onTap: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => PhotoViewPage(url: post.imageUrl),));
                 },
                 child: CachedNetworkImage(
                     fit: BoxFit.cover,
                     imageUrl: post.imageUrl),
               );
              }
          );
        },
        error: (err, st) => Center(child: Text('$err')),
        loading: () => Center(child: CircularProgressIndicator())
    );
  }
}