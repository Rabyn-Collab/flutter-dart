import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm/core/apptheme/app_sizes.dart';
import 'package:mvvm/feature/user/view_model/user_view_model.dart';
import 'package:mvvm/routes/route_enum.dart';

class UserList extends ConsumerWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usersState = ref.watch(usersStreamProvider);
    return SizedBox(
      height: 90,
      child: usersState.when(
          data: (data){

            return ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (context, index){
                  final user = data[index];

              return InkWell(
                onTap: (){
                  context.pushNamed(AppRoute.userDetail.name, extra:  user);
                },
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 22,
                      backgroundImage: NetworkImage(user.imageUrl!),
                    ),
                   gapH10,
                   Text(user.firstName!)
                  ],
                ),
              );
                }
            );
          }, error: (err, st){
            return Text('$err');
      }, loading: () => SizedBox.shrink())
    );
  }
}