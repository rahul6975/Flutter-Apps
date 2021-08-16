import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color mainColor = Color(0xff6C60E0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Geekyants"),
        ),
        body: Column(
          children: <Widget>[
            Row(
              children: [
                Container(
                  width: 500,
                  height: 100,
                  color: mainColor,
                  child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Hi Rahul",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "Welcome back",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  "Categories",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Image.asset(
                  "screen.jpg",
                  width: 400,
                  height: 400,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
