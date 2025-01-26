



class Todo{

  final String todo;
  final bool isCompleted;


  Todo({
    required this.todo,
    required this.isCompleted
  });


  factory Todo.add(String todo){
    return Todo(todo: todo, isCompleted: false);
  }


}