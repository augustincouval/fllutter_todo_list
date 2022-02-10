
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../data/tasks.dart';
import '../models/task.dart';

var StaticTaskList = Tasks.getTasks();

class TaskCollection extends ChangeNotifier{

    late List<Task> taskslist;

    TaskCollection(){
      this.taskslist = StaticTaskList;
    }

    void update(Task task){
      var index = taskslist.indexWhere((element) => element.id == task.id);
      taskslist[index] = task;
      notifyListeners();
    }

  void create(Task task){
    this.taskslist.add(task);
    notifyListeners();
  }


  void delete(Task task){
    this.taskslist.removeWhere((element) => element.id == task.id);
    notifyListeners();



  }




}