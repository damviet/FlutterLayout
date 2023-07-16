import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_design/models/task.dart';
import 'package:flutter_design/ui/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  final List<Task> tasks;

  const TaskList(this.tasks, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(tasks[index]);
      },
      itemCount: tasks.length,
    );
  }
}
