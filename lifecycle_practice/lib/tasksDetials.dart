import 'package:flutter/material.dart';
import 'package:lifecycle_practice/TasksData.dart';

class TasksDetails extends StatefulWidget {
  @override
  _TasksDetailsState createState() => _TasksDetailsState();
}

class _TasksDetailsState extends State<TasksDetails> {
  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)!.settings.arguments as TasksData;
    return Scaffold(
      appBar: AppBar(
        title: Text("TaskDetails"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Text(
                "Title : ${data.title} \n Desc = ${data.desc} \n  Date = ${data.date}"),
          ),
        ],
      ),
    );
  }
}
