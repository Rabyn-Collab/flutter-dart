



class Todo{

  final String todo;
  final bool isCompleted;


  Todo({
    required this.todo,
    required this.isCompleted
  });

  // map ma aako datalai model ma convert garne
  factory Todo.fromJson(Map<String, dynamic> json){
    return Todo(
        todo: json['todo'],
        isCompleted: json['isCompleted']
    );
  }

  // new instance create garne
  factory Todo.add(String todo){
    return Todo(
        todo: todo,
        isCompleted: false
    );
  }


// instance ko value update garne
 Todo copyWith ({String? todo, bool? isCompleted}){
  return Todo(
      todo: todo ?? this.todo,
      isCompleted: isCompleted ?? this.isCompleted
  );
}


}