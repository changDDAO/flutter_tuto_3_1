import 'package:flutter/material.dart';
class ToDo{
  final String title;
  final String description;

  ToDo(this.title, this.description);

}

class ToDoScreen extends StatelessWidget {
  ToDoScreen({Key? key,required this.todos})

  final List<ToDo> todos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'todos'
        ),
      ),
      body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index){
          return ListTile(
            title: Text(todos[index].title),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                  builder: (context) =>DetailScreen(todo: todos[index]),
                    settings: RouteSettings(
                      arguments: todos[index],
                    ),
              ),
              );
            },
          );
          }
          ),
    );
  }
}
class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.todo})

  final ToDo todo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(todo.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Text(todo.description),
      ),
    );
  }
}

