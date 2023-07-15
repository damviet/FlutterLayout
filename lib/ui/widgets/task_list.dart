import 'package:flutter/material.dart';
import 'package:flutter_design/ui/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: const [
        TaskTile(),
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}
