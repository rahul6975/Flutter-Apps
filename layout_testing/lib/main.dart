import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void onButtonClicked() {
    print("Button clicked");
    count++;
  }

  var count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Hello",
        ),
      ),
      body: Column(
        children: <Widget>[
          Text("$count", style: TextStyle(fontSize: 20)),
          Row(
            children: <Widget>[
              Expanded(
                child: Card(
                    color: Colors.green,
                    margin: EdgeInsets.all(20),
                    child: FlatButton(
                        onPressed: () {
                          onButtonClicked();
                        },
                        child: Text("hello"))),
              ),
              SizedBox(
                child: Text("sized box"),
                height: 100,
                width: 20,
                
              ),
              Divider(
                height: 10,
                thickness: 2,
                color: Colors.red,
                // indent: 20,
                // endIndent: 20,
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
          Row(
            children: <Widget>[
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
                  color: Colors.purple,
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
        ],
      ),
    ));
  }
}

