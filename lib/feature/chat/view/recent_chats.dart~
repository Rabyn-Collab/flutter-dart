import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm/feature/chat/view_model/chat_view_model.dart';


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
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(recent.imageUrl!),
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