import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({
    super.key,
  });

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        "This is task tile",
        style: TextStyle(decoration: TextDecoration.lineThrough),
      ),
      trailing: TaskCheckbox(isChecked),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;

  const TaskCheckbox(this.checkboxState, {super.key});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      onChanged: (value) {},
      value: checkboxState,
    );
  }
}
