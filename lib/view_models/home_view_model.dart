import 'package:flutter/material.dart';
import 'package:flutter_design/models/task.dart';

class HomeViewModel extends ChangeNotifier {
  List<Task> tasks = [];
  String newTaskName = "";

  void addNewTask(Task task) {
    tasks.add(task);
    notifyListeners();
  }

  void toggleTask(bool isDone) {}
}
