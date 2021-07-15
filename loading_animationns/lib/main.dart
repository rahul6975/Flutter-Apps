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
          title: Text("Animations"),
        ),
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text("My trip to Kaula Lumpur"),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text("From"),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text("Mumbai, India"),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text("Departure"),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text("30th July 2021"),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text("Return"),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text("30th August 2021"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
