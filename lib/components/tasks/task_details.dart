import 'package:couval_todo_list/models/task.dart';
import 'package:flutter/material.dart';

class TaskDetails extends StatefulWidget {

  final Task task;
  TaskDetails(this.task);


  @override
  _TaskDetailsState createState() => _TaskDetailsState();
}

class _TaskDetailsState extends State<TaskDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.task.toString())
      ),
      body: TaskDetails(widget.task),
    );
  }
}
