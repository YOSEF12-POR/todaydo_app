import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isCheced = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'go shoping',
        style:
            TextStyle(decoration: isCheced ? TextDecoration.lineThrough : null),
      ),
      trailing: CheckBoxTask(isCheced, (bool? newValue) {
        setState(() {
          isCheced = newValue!;
        });
      }),
    );
  }
}

class CheckBoxTask extends StatelessWidget {
  final bool? CheckState;
  final Function(bool?) CheckedCanged;
  CheckBoxTask(this.CheckState, this.CheckedCanged);
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.teal[400],
        value: CheckState,
        onChanged: CheckedCanged);
  }
}
