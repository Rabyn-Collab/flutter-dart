import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm/feature/auth/repository/auth_repository.dart';
import 'package:mvvm/routes/route_enum.dart';


class DrawerWidget extends ConsumerWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children:  [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text('Post Add'),
            onTap: (){
              context.pushNamed(AppRoute.addPost.name);
            },
          ),

          ListTile(
            leading: Icon(Icons.chat_sharp),
            title: Text('Recent Chats'),
            onTap: (){
              context.pop();
              context.pushNamed(AppRoute.recent.name);
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Log Out'),
            onTap: (){
              ref.read(authRepositoryProvider).userLogOut();
            },
          )
         ],
      ),
    );
  }
}