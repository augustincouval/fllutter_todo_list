import 'package:couval_todo_list/components/tasks/task_master.dart';
import 'package:couval_todo_list/screens/all_tasks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';


void main() {
  runApp(TodoList());
}



class TodoList extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      initialRoute: '/',
      routes: {
        '/home': (context) => TodoList(),
        '/all' : (context) => AllTasks(),
        '/master' : (context) => TaskMaster(),
       },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AllTasks(),
    );
  }
}



