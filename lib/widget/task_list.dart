import 'package:flutter/material.dart';
import 'package:todaydo_app/models/task.dart';
import '../widget/task_tile.dart';

class TaskList extends StatefulWidget {
  const TaskList({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: 'go shopping'),
    Task(name: 'go university'),
    Task(name: 'go school'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(
          taskTitle: tasks[0].name,
          isCheced: tasks[0].isDone,
        ),
        TaskTile(
          taskTitle: tasks[1].name,
          isCheced: tasks[1].isDone,
        ),
        TaskTile(
          taskTitle: tasks[2].name,
          isCheced: tasks[2].isDone,
        ),
      ],
    );
  }
}
