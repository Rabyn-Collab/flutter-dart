import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm/feature/chat/view_model/chat_view_model.dart';
import 'package:mvvm/routes/route_enum.dart';


class RecentChats extends ConsumerWidget {
  const RecentChats({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recentState = ref.watch(getRoomsProvider);
    return Scaffold(
      appBar: AppBar(),
      body: recentState.when(
          data: (data){
            return ListView.builder(
              itemCount: data.length,
                itemBuilder: (context, index){
                final recent = data[index];
                return ListTile(
                  onTap: (){
                    context.pushNamed(AppRoute.chat.name, extra: recent.id);
                  },
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(recent.imageUrl ?? 'https://plus.unsplash.com/premium_photo-1731680781010-4be752ecab0f?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwyfHx8ZW58MHx8fHx8'),
                  ),
                  title: Text(recent.name!),
                );
                }
            );
          },
          error: (err, st) => Center(child: Text('$err')),
          loading: () => Center(child: CircularProgressIndicator())
      ),
    );
  }
}