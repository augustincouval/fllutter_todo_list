import 'package:couval_todo_list/screens/all_tasks.dart';
import 'package:couval_todo_list/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(TodoList());
}

class TodoList extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AllTasks(),
    );
  }
}



