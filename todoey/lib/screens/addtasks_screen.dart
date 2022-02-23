import 'package:flutter/material.dart';
import 'package:flutterapp/models/task_data.dart';
import 'package:provider/provider.dart';

String newtaskTitle;

class AddTasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newtext) {
                newtaskTitle = newtext;
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            // ignore: deprecated_member_use
            FlatButton(
              color: Colors.lightBlueAccent,
              padding: EdgeInsets.symmetric(
                vertical: 20.0,
              ),
              child: Text(
                'ADD',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                Provider.of<TaskData>(context,listen:false).addTask(newtaskTitle);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
