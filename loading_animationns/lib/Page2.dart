import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          title: Text("Animations"),
        ),
        body: Hero(
          tag: "hero",
          child: Center(
            child: Container(
              padding: EdgeInsets.all(20),
              color: Colors.white,
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
                            style: TextStyle(color: Colors.green, fontSize: 30),
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
                                  TextStyle(color: Colors.black, fontSize: 25),
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
                                  TextStyle(color: Colors.green, fontSize: 30)),
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
                                    color: Colors.black, fontSize: 25)),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text("30th July 2021",
                              style:
                                  TextStyle(color: Colors.green, fontSize: 30)),
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
                                    color: Colors.black, fontSize: 25)),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text("30th August 2021",
                              style:
                                  TextStyle(color: Colors.green, fontSize: 30)),
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
