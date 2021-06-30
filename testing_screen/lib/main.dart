import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Card(
                    margin: EdgeInsets.all(20),
                    color: Colors.green,
                    child: Text(
                      "Hello",
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    margin: EdgeInsets.all(20),
                    color: Colors.purple,
                    child: Text(
                      "inside",
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
             Row(
              children: <Widget>[
                Expanded(
                  child: Card(
                    margin: EdgeInsets.all(20),
                    color: Colors.blue,
                    child: Text(
                      "second",
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}