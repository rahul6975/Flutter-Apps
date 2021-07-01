import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var list=List();
  void getBox(int position) {
    if (position == 1) {

    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text(
            "Block Game",
            style: TextStyle(fontSize: 15, color: Colors.black),
          ),
        ),
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                      onPressed: () {},
                      child: Image.asset('images/black.png',
                          width: 65, height: 90)),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {},
                      child: Image.asset('images/black.png',
                          width: 65, height: 90)),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {},
                      child: Image.asset('images/black.png',
                          width: 65, height: 90)),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {},
                      child: Image.asset('images/black.png',
                          width: 65, height: 90)),
                ),
                // Expanded(
                //   child: FlatButton(
                //       onPressed: () {}, child: Image.asset('images/black.png', width: 65,height: 90)),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
