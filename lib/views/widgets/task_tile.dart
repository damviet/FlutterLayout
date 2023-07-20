import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_design/view_models/home_view_model.dart';
import 'package:provider/provider.dart';

class TaskTile extends StatelessWidget {
  final int index;
  const TaskTile(
    this.index, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModel>(
      builder: (context, model, child) {
        return ListTile(
          title: Text(
            model.getTaskName(index) ?? "Empty",
            style: TextStyle(
              decoration: model.isTaskDone(index) ?? false
                  ? TextDecoration.lineThrough
                  : null,
            ),
          ),
          trailing: Checkbox(
            activeColor: Colors.lightBlueAccent,
            // onChanged: checkboxCallback,
            onChanged: (newValue) {
              model.toggleTask(index, newValue ?? true);
            },
            value: model.isTaskDone(index),
          ),
        );
      },
    );
  }
}
