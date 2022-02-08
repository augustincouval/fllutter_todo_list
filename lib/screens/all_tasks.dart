import 'package:couval_todo_list/screens/create_task.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AllTasks extends StatefulWidget {
  const AllTasks({Key? key}) : super(key: key);
  @override
  _AllTasksState createState() => _AllTasksState();
}

class _AllTasksState extends State<AllTasks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listes des tâches', style: GoogleFonts.lato(),),
      ),
      body: Center(
        child : ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/detail');
          },
          child: const Text("retour au main"),
        )
      ),
    );
  }
}

