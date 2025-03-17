import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm/feature/home/view/widgets/drawer_widget.dart';
import 'package:mvvm/feature/post/view/post_list.dart';
import 'package:mvvm/feature/user/view/user_list.dart';
import 'package:mvvm/routes/route_enum.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            context.pushNamed(AppRoute.detail.name, pathParameters: {'id': '100'});
          }, icon: Icon(Icons.chevron_right))
        ],
      ),
      drawer: DrawerWidget(),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              const UserList(),
              const PostList(),
            ],
          ),
        )
    );
  }
}
