import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_design/models/task.dart';

class HomeViewModel extends ChangeNotifier {
  List<Task> tasks = [];
  String newTaskName = "";

  int get taskCount {
    return tasks.length;
  }

  String? getTaskName(int index) {
    if (tasks.length > index && index >= 0) {
      return tasks[index].name;
    }
    return null;
  }

  bool? isTaskDone(int index) {
    if (tasks.length > index && index >= 0) {
      return tasks[index].isDone;
    }
    return null;
  }

  void addNewTask(String name) {
    tasks.add(Task(name: name));
    notifyListeners();
  }

  void toggleTask(int index, bool isDone) {
    tasks[index].isDone = isDone;
    notifyListeners();
  }
}
