import 'package:flutter/material.dart';
import 'package:mvvm/core/apptheme/app_sizes.dart';
import 'package:mvvm/feature/user/view/widgets/user_post_list.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
class UserDetail extends StatelessWidget {
  final types.User user;
  const UserDetail({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
              CircleAvatar(backgroundImage: NetworkImage(user.imageUrl!), radius: 30,),
              gapW20,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(user.firstName!),
                  Text(user.metadata?['email'] ?? '@example.com'),

                ],
              ),
                gapW20,
                ElevatedButton(onPressed: (){}, child: Text('Start Chat'))

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
