import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.green,
              width: 200,
              margin: EdgeInsets.all(20),
              height: 200,
              child: Center(
                child: Text(
                  "Hello",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.yellow,
              width: 200,
              margin: EdgeInsets.all(20),
              height: 200,
              child: Center(
                child: Text(
                  "Hello",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              width: 200,
              margin: EdgeInsets.all(20),
              height: 200,
              child: Center(
                child: Text(
                  "Hello",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
