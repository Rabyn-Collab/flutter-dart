import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttermangsir/providers/todo_provider.dart';


class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final todoListState = ref.watch(todoProvider);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text('hello jee'),

        ],
      ),
    );
  }
}
