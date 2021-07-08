import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> list = [];

  addWidget() {
    setState(() {
      list.add(
        Container(
          width: 300,
          height: 200,
          color: Colors.blue,
          child: SizedBox(
            width: 300,
            height: 200,
            child: Row(
              children: [
                Center(child: Text("Tune muhje kyu add kiya ?")),
              ],
            ),
          ),
        ),
      );
    });
  }

  removeWidget() {
    setState(() {
      list.removeLast();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Add Widget"),
        ),
        body: Column(
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      addWidget();
                    },
                    child: Text("Click me to add"),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      removeWidget();
                    },
                    child: Text("Click me to remove"),
                  ),
                ),
              ],
            ),
            Center(
              child: Row(
                children: list,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
