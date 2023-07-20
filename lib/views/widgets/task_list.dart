import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_design/models/task.dart';
import 'package:flutter_design/view_models/home_view_model.dart';
import 'package:flutter_design/views/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModel>(
      builder: (context, model, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(index);
          },
          itemCount: model.taskCount,
        );
      },
    );
  }
}
