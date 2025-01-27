import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttermangsir/providers/todo_provider.dart';


class TodoList extends ConsumerWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final todoList = ref.watch(todoProvider);
    return  Expanded(
        child: ListView.separated(
            itemBuilder: (context, index){
              final todo = todoList[index];
              return Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.today_outlined),
                    title: Text(todo.todo),
                    trailing: SizedBox(
                      width: 50,
                      child: Row(
                        children: [
                          IconButton(onPressed: (){
                            ref.read(todoProvider.notifier).removeTodo(todo);
                          }, icon: Icon(Icons.delete))
                        ],
                      ),
                    ),
                  ),
                  CheckboxListTile(
                    title: Text('Completed'),
                      value: todo.isCompleted,
                      onChanged: (val){
                        ref.read(todoProvider.notifier).updateTodo(todo, val!);
                      }
                  )
                ],
              );
            },
            separatorBuilder: (context, index){
              return Divider();
            },
            itemCount: todoList.length,

        )
    );
  }
}