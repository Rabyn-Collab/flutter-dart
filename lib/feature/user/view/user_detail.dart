import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm/core/apptheme/app_sizes.dart';
import 'package:mvvm/core/common_widgets/common_dialog.dart';
import 'package:mvvm/feature/chat/view_model/chat_view_model.dart';
import 'package:mvvm/feature/user/view/widgets/user_post_list.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;


class UserDetail extends ConsumerWidget {
  final types.User user;
  const UserDetail({super.key, required this.user});

  @override
  Widget build(BuildContext context, ref) {
    ref.listen(chatViewModelProvider, (prev, next){
      next.maybeWhen(
          data: (data){},
          error: (err, st) => CommonDialog.showCommonDialog(context, '$err'),
          orElse: () => null);
    });
    final roomState = ref.watch(chatViewModelProvider);
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
              CircleAvatar(backgroundImage: NetworkImage(user.imageUrl ?? 'https://plus.unsplash.com/premium_photo-1731680781010-4be752ecab0f?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwyfHx8ZW58MHx8fHx8'), radius: 30,),
              gapW20,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(user.firstName!),
                    Text(user.metadata?['email'] ?? '@example.com'),

                  ],
                ),
              ),
                gapW20,
                ElevatedButton(
                    onPressed:roomState.isLoading? null: (){
                      ref.read(chatViewModelProvider.notifier).createRoom(user);
                    },
                    child: roomState.isLoading ? CircularProgressIndicator(): Text('Start Chat'))

              ],
            ),
            gapH26,
            Expanded(child: UserPostList(id: user.id)),
          ],
        ),
      ),
    );
  }
}
