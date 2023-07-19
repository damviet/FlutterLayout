import 'package:flutter/material.dart';
import 'package:flutter_design/models/task.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final Function(bool?) onTaskToggled;
  const TaskTile(
    this.task,
    this.onTaskToggled, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task.name,
        style: TextStyle(
          decoration: task.isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        // onChanged: checkboxCallback,
        onChanged: onTaskToggled,
        value: task.isDone,
      ),
    );
  }
}
