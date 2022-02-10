
import 'package:couval_todo_list/components/tasks/task_details.dart';
import 'package:couval_todo_list/data/taskCollection.dart';

import 'package:couval_todo_list/screens/all_tasks.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
        create: (context) => TaskCollection(),
            child:  TodoList(),
    ),
  );
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
        '/all' : (context) => AllTasks(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AllTasks(),
    );
  }
}



