import 'package:couval_todo_list/models/task.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskDetails extends StatefulWidget {

  const TaskDetails ({Key? key, required this.task}) : super(key : key);
  final Task task;
  @override
  _TaskDetailsState createState() => _TaskDetailsState();
}

class _TaskDetailsState extends State<TaskDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Détail de la Tâche N°' + widget.task.id.toString(), style: GoogleFonts.lato(),)
      ),
      floatingActionButton: Container(

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(
        child: Row(
          children: <Widget>[
            Expanded(child:
            Text('Description : ' + widget.task.content, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
            ),
          ],

        ),
      )
    );
  }



  _deleteTask(task){
    print(task);
  }
}
