import 'package:couval_todo_list/data/taskCollection.dart';
import 'package:couval_todo_list/models/task.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TaskDetails extends StatefulWidget {
  const TaskDetails({Key? key, required this.task}) : super(key: key);
  final Task task;

  @override
  _TaskDetailsState createState() => _TaskDetailsState();
}

class _TaskDetailsState extends State<TaskDetails> {
  final TextEditingController _inputDescriptionController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          'Détail de la Tâche N°' + widget.task.id.toString(),
          style: GoogleFonts.lato(),
        )),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton.extended(
              onPressed: () => _deleteTask(widget.task),
              icon: Icon(Icons.delete),
              label: Text("Supprimer"),
              heroTag: 'btnDelete',
            ),
            FloatingActionButton.extended(
              onPressed: () => _openDialog(context),
              icon: Icon(Icons.edit),
              label: Text('Modifier'),
              heroTag: 'btnUpdate',
            )
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Text('Description : ' + widget.task.content,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text('Création : ' + widget.task.createdAt.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text('Effectué : ' + widget.task.completed.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ],
          ),
        ));
  }

   _deleteTask(task) {

    return showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text('Supprimer'),
            content: Text('Voulez vous vraiement supprimer'),
            actions: [
              FlatButton(
                  onPressed: (){
                    Provider.of<TaskCollection>(context, listen: false).delete(task);
                    Navigator.pushNamed(context, '/all');
                  },
                  child: Text('Oui'),
              ),
              FlatButton(onPressed: () {
                Navigator.of(context).pop();
              }, child: Text('Non'))
            ],
          );
        }
        );



  }

  _openDialog(BuildContext context) {
    print('open dialog');
    // return ShowDialog(
    //   context: context,
    //   builder : (BuildContext context){
    //     return AlertDialog(
    //       title: Text('Modification'),
    //       content: TextField(
    //         controller: _inputDescriptionController,
    //         decoration: const InputDecoration(hintText: "description"),
    //       ),
    //       actions: <Widget>[
    //         ElevatedButton(
    //             onPressed: _updateTask(widget.task),
    //             child: Icon(Icons.check),
    //         ),
    //       ],
    //     );
    //   }
    // );
  }

  _updateTask(task) {
    print(task);
  }
}

class ShowDialog {}
