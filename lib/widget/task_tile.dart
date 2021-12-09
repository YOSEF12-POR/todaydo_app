import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('go shoping'),
      trailing: CheckBoxTask(),
    );
  }
}

class CheckBoxTask extends StatefulWidget {
  @override
  State<CheckBoxTask> createState() => _CheckBoxTaskState();
}

class _CheckBoxTaskState extends State<CheckBoxTask> {
  bool? isCheced = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.teal[400],
      value: isCheced,
      onChanged: (newValue) {
        setState(() {
          isCheced = newValue;
        });
      },
    );
  }
}
