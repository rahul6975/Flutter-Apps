import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Hello",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
        body: Center(
          child: Text("Hello"),
        ),
      ),
    );
  }
}
