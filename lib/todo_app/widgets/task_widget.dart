import 'package:flutter/material.dart';
import 'package:state_managment/todo_app/models/task_model.dart';

class TaskWidget extends StatelessWidget {
  Function fun;
  Function delete;
  Task task;
  TaskWidget(this.task, this.fun, this.delete);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: task.isCompleted
              ? Color.fromARGB(255, 76, 160, 175)
              : Color.fromARGB(115, 147, 137, 137),
          borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      child: Column(
        children: [
          CheckboxListTile(
            secondary: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                delete(task);
              },
            ),
            title: Text(task.title),
            value: task.isCompleted,
            onChanged: (v) {
              fun(task);
            },
          ),
        ],
      ),
    );
  }
}
