
import 'package:flutter/material.dart';
import '../../models/task.dart';
import './task_preview.dart';

class TaskMaster extends StatelessWidget {
  final List<Task> taskslist;
  const TaskMaster({Key? key, required this.taskslist}) : super(key: key);

  List<TaskPreview> _getListTaskPreview(){
    var tasks = <TaskPreview>[];
    for(Task t in taskslist){
      tasks.add(TaskPreview(t));
    }
    return tasks;
  }


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _getListTaskPreview()
    );
  }
}

