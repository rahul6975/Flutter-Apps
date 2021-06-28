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
          title: Text(
            "Evaluation",
          ),
        ),
        body: Row(
          children: <Widget>[
            Expanded(
              child: Center(
                child: Container(
                  color: Colors.red,
                  width: 200,
                  margin: EdgeInsets.all(20),
                  height: 200,
                  child: Center(
                    child: Text(
                      "72 kg weight",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Container(
                  color: Colors.purple,
                  width: 200,
                  margin: EdgeInsets.all(20),
                  height: 200,
                  child: Center(
                    child: Text(
                      "175 cm height",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Container(
                  color: Colors.blue,
                  width: 200,
                  height: 200,
                  child: Center(
                    child: Text(
                      "Boxing, Gym",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
