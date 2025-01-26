import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttermangsir/models/todo.dart';
import 'package:fluttermangsir/providers/todo_provider.dart';
import 'package:fluttermangsir/widgets/input_widget.dart';
import 'package:fluttermangsir/widgets/todo_list.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('TODO APP'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const InputWidget(),
            const SizedBox(height: 20,),
            const TodoList(),
          ],
        ),
      ),
    );
  }
}
