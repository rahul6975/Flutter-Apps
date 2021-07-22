import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> list = [];

  void addToList(var tasks) {
    setState(() {
      list.add(
        Row(
          children: <Widget>[
            Expanded(
              child: Text(
                tasks,
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tasks Manager"),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: ListView(
                  children: list,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: AddTasks(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AddTasks extends StatefulWidget {
  AddTasks({Key? key}) : super(key: key);

  @override
  _AddTasksState createState() => _AddTasksState();
}

class _AddTasksState extends State<AddTasks> {
  void showBottomSheet() {
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
        ),
        builder: (context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.email),
                title: Text('Send email'),
                onTap: () {
                  print('Send email');
                },
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text('Call phone'),
                onTap: () {
                  print('Call phone');
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          showBottomSheet();
        },
        child: Text("Add Tasks"),
      ),
    );
  }
}
