import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isCheced;
  final String taskTitle;
  TaskTile({required this.isCheced, required this.taskTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style:
            TextStyle(decoration: isCheced ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal[400],
        value: isCheced,
        onChanged: null,
        // onChanged: CheckedCanged
      ),
    );
  }
}



// (bool? newValue) {
//         setState(() {
//           isCheced = newValue!;
//         }

// class CheckBoxTask extends StatelessWidget {
//   final bool? CheckState;
//   final Function(bool?) CheckedCanged;
//   CheckBoxTask(this.CheckState, this.CheckedCanged);
//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }
