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
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: CircleAvatar(
              child: Text(widget.task.content.toString()[0]),
            ),
          ),
          Expanded(
              flex: 3,
              child: ListTile(
            title: Text(widget.task.content.toString()),
            onTap: () => _getTaskDetail(widget.task),
          )),
          Expanded(
              flex: 1,
              child: Checkbox(
            value: _isSelected,
            onChanged: (bool? value) {
              setState(() {
                _isSelected = value!;
                widget.task.completed = value;
              });
            },
          )),
        ],
      ),
    );
  }

  _getTaskDetail(Task task) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => TaskDetails(task : widget.task),
      )
    );
  }
}
