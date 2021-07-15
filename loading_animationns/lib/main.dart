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
        backgroundColor: Colors.amberAccent,
        appBar: AppBar(
          title: Text("Animations"),
        ),
        body: TextButton(
          onPressed: () {},
          child: Center(
            child: Container(
              padding: EdgeInsets.all(20),
              color: Colors.white60,
              child: SizedBox(
                width: 300,
                height: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            "My trip to Kaula Lumpur",
                            style: TextStyle(color: Colors.green, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              "From :",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text("Mumbai, India",
                              style:
                                  TextStyle(color: Colors.green, fontSize: 20)),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text("Departure :",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15)),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text("30th July 2021",
                              style:
                                  TextStyle(color: Colors.green, fontSize: 20)),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text("Return :",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15)),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text("30th August 2021",
                              style:
                                  TextStyle(color: Colors.green, fontSize: 20)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
