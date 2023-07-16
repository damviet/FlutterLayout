import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_design/models/task.dart';
import 'package:flutter_design/ui/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  const TaskList({
    super.key,
  });

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: "Task name 1"),
    Task(name: "Task name 2"),
    Task(name: "Task name 3")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(tasks[index], (bool? newValue) {
          setState(() {
            tasks[index].toggleDone(newValue!);
          });
        });
      },
      itemCount: tasks.length,
    );
  }
}
