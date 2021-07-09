import 'package:flutter/material.dart';
import 'package:lifecycle_practice/TasksData.dart';
import 'package:lifecycle_practice/tasksDetials.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      routes: {
        'details': (context) => TasksDetails(),
      },
    ),
  );
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Title"),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("$count"),
              FloatingActionButton(
                onPressed: () {
                  TasksData tasksData =
                      TasksData("Buys fruits", "Buy kr jldi", "Aaj");
                  Navigator.pushNamed(context, 'details', arguments: tasksData);
                },
                child: Icon(Icons.add),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
