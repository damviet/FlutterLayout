import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_design/models/task.dart';
import 'package:flutter_design/views/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    var task
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(tasks[index], (bool? value) {
          onTaskToggled(index, value);
        });
      },
      itemCount: tasks.length,
    );
  }
}
