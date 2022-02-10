import 'package:couval_todo_list/components/tasks/task_details.dart';
import 'package:couval_todo_list/components/tasks/task_master.dart';
import 'package:flutter/material.dart';

import '../../models/task.dart';

class TaskPreview extends StatefulWidget {

  final Task task;
  TaskPreview(this.task);


  @override
  _TaskPreviewState createState() => _TaskPreviewState();
}

class _TaskPreviewState extends State<TaskPreview> {

  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return
        ListTile(
          leading: Icon( (_isSelected) ? Icons.check : Icons.hourglass_empty),
          title: Text(widget.task.content.toString()),
          onTap: ()=> _getTaskDetail(widget.task),

        );
  }



  _getTaskDetail(Task task){
    setState(() {
      _isSelected = true;
    });
    TaskMaster(taskslist: [task],);
  }
}



