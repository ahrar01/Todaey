import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void checkboxCallback(bool checkboxState) {
    setState(() {
      isChecked = checkboxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "this is a task",
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
          checkboxstate: isChecked, toggleCheckboxState: checkboxCallback),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkboxstate;
  final Function toggleCheckboxState;

  TaskCheckBox({this.checkboxstate, this.toggleCheckboxState});

  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxstate,
      onChanged: toggleCheckboxState,
    );
  }
}
