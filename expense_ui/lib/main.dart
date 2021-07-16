import 'package:expense_ui/graph.dart';
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Expense App UI"),
        ),
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  "Hello",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                Container(
                  margin: EdgeInsets.only(left: 50),
                  child: Image.asset(
                    'images/search.png',
                    width: 200,
                    height: 200,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Rahul",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Graph(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
