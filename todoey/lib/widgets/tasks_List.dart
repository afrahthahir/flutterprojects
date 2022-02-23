import 'package:flutter/material.dart';

import 'package:flutterapp/models/task_data.dart';
import 'tasks_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskdata, child) {
      return ListView.builder(
        itemBuilder: (content, index) {
          final task = taskdata.tasks[index];
          return TasksTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              longPressCallBack: () {
                taskdata.deleteTask(task);
              },
              checkboxCallBack: (checkboxState) {
                taskdata.updateTask(task);
              });
        },
        itemCount: taskdata.tasks.length,
      );
    });
  }
}
