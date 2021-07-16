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
            Container(
              margin: EdgeInsets.only(top: 10, left: 10),
              child: Row(
                children: <Widget>[
                  Text(
                    "Hello,",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 260),
                    child: Image.asset(
                      'images/search.png',
                      width: 35,
                      height: 35,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 10),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Rahul",
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Graph(),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, top: 20),
                  child: Text(
                    "Today",
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  child: Image.asset(
                    'images/tshirt.png',
                    width: 55,
                    height: 55,
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 25, top: 10),
                      child: Row(
                        children: [
                          Text(
                            "Nike Store",
                            style: TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Clothing",
                          style:
                              TextStyle(color: Colors.blueGrey, fontSize: 13),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 110, top: 10),
                  child: Text("-734.00"),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, top: 20),
                  child: Text(
                    "08 April",
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 10),
                  child: Image.asset(
                    'images/mobile.jpg',
                    width: 70,
                    height: 70,
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 25, top: 10),
                      child: Row(
                        children: [
                          Text(
                            "Apple Store",
                            style: TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Electronics",
                          style:
                              TextStyle(color: Colors.blueGrey, fontSize: 13),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 90, top: 10),
                  child: Text("-25.00"),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 10),
                  child: Image.asset(
                    'images/car.jpg',
                    width: 70,
                    height: 70,
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            "Uber",
                            style: TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            "Transport",
                            style:
                                TextStyle(color: Colors.blueGrey, fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 140, top: 10),
                  child: Text("-4.99"),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, top: 20),
                  child: Text(
                    "07 April",
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 26),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Image.asset(
                              'images/di.png',
                              width: 30,
                              height: 30,
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "Discover",
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Image.asset(
                              'images/notes.jpg',
                              width: 30,
                              height: 30,
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "Recipts",
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Image.asset(
                              'images/scanner.png',
                              width: 30,
                              height: 30,
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "Scan",
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Image.asset(
                              'images/his.png',
                              width: 30,
                              height: 30,
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "Stocks",
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Image.asset(
                              'images/profile.png',
                              width: 30,
                              height: 30,
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "Profile",
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
