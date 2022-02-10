
import 'package:couval_todo_list/data/taskCollection.dart';
import 'package:couval_todo_list/models/task.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../components/tasks/task_master.dart';
import '../data/tasks.dart';
import '../models/task.dart';

class AllTasks extends StatefulWidget {
  const AllTasks({Key? key}) : super(key: key);
  @override
  _AllTasksState createState() => _AllTasksState();
}

class _AllTasksState extends State<AllTasks> {


  @override
  Widget build(BuildContext context) {

    return  Container(
      child: Scaffold(
          appBar: AppBar(title: Text("Liste des tâches", style: GoogleFonts.lato())),
          body: Consumer<TaskCollection>(
            builder: (context, task, child) => Stack(
              children: [
                TaskMaster(taskslist: (task.taskslist.length == 0 ) ? task.taskslist = Tasks.getTasks() : task.taskslist),
              ],
            ),
          )
      ),
    );
  }

  List<Task> getItems(){
    final List<Task> _toDoWidget = <Task>[];
    for(Task task in Tasks.getTasks()){
     _toDoWidget.add(task);
    }

    return _toDoWidget;
  }
}

