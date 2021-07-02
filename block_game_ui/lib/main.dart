import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var b = "black";
  var w = "white";
  var list = [
    "black",
    "black",
    "black",
    "black",
    "black",
    "black",
    "black",
    "black",
    "black",
    "black",
    "black",
    "black",
    "black",
    "black",
    "black",
    "black",
    "black",
    "black",
    "black",
    "black",
    "black",
    "black",
    "black",
    "black",
    "black",
    "black",
    "black",
    "black",
    "black",
    "black",
    "black",
    "black"
  ];
  void getBox(int position) {
    var box = position - 1;
    list[box + 4] = "white";
  }

  void makePreviousBlack(int position) {
    var box = position - 1;
    list[box] = "black";
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
                      onPressed: () {
                        getBox(1);
                        makePreviousBlack(1);
                        setState(() {
                          Image.asset('images/${list[0]}.png');
                        });
                      },
                      child: Image.asset('images/${list[0]}.png',
                          width: 65, height: 90)),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        getBox(2);
                        makePreviousBlack(2);
                        setState(() {
                          Image.asset('images/${list[1]}.png');
                        });
                      },
                      child: Image.asset('images/${list[1]}.png',
                          width: 65, height: 90)),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        getBox(3);
                        makePreviousBlack(3);
                        setState(() {
                          Image.asset('images/${list[2]}.png');
                        });
                      },
                      child: Image.asset('images/${list[2]}.png',
                          width: 65, height: 90)),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        getBox(4);
                        makePreviousBlack(4);
                        setState(() {
                          Image.asset('images/${list[3]}.png');
                        });
                      },
                      child: Image.asset('images/${list[3]}.png',
                          width: 65, height: 90)),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        getBox(5);
                        makePreviousBlack(5);
                        setState(() {
                          Image.asset('images/${list[4]}.png');
                        });
                      },
                      child: Image.asset('images/${list[4]}.png',
                          width: 65, height: 90)),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        getBox(6);
                        makePreviousBlack(6);
                        setState(() {
                          Image.asset('images/${list[5]}.png');
                        });
                      },
                      child: Image.asset('images/${list[5]}.png',
                          width: 65, height: 90)),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        getBox(7);
                        makePreviousBlack(7);
                        setState(() {
                          Image.asset('images/${list[6]}.png');
                        });
                      },
                      child: Image.asset('images/${list[6]}.png',
                          width: 65, height: 90)),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        getBox(8);
                        makePreviousBlack(8);
                        setState(() {
                          Image.asset('images/${list[7]}.png');
                        });
                      },
                      child: Image.asset('images/${list[7]}.png',
                          width: 65, height: 90)),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        getBox(9);
                        makePreviousBlack(9);
                        setState(() {
                          Image.asset('images/${list[8]}.png');
                        });
                      },
                      child: Image.asset('images/${list[8]}.png',
                          width: 65, height: 90)),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        getBox(10);
                        makePreviousBlack(10);
                        setState(() {
                          Image.asset('images/${list[9]}.png');
                        });
                      },
                      child: Image.asset('images/${list[9]}.png',
                          width: 65, height: 90)),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        getBox(11);
                        makePreviousBlack(11);
                        setState(() {
                          Image.asset('images/${list[10]}.png');
                        });
                      },
                      child: Image.asset('images/${list[10]}.png',
                          width: 65, height: 90)),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        getBox(12);
                        makePreviousBlack(12);
                        setState(() {
                          Image.asset('images/${list[11]}.png');
                        });
                      },
                      child: Image.asset('images/${list[11]}.png',
                          width: 65, height: 90)),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        getBox(13);
                        makePreviousBlack(13);
                        setState(() {
                          Image.asset('images/${list[12]}.png');
                        });
                      },
                      child: Image.asset('images/${list[12]}.png',
                          width: 65, height: 90)),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        getBox(14);
                        makePreviousBlack(14);
                        setState(() {
                          Image.asset('images/${list[13]}.png');
                        });
                      },
                      child: Image.asset('images/${list[13]}.png',
                          width: 65, height: 90)),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        getBox(15);
                        makePreviousBlack(15);
                        setState(() {
                          Image.asset('images/${list[14]}.png');
                        });
                      },
                      child: Image.asset('images/${list[14]}.png',
                          width: 65, height: 90)),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        getBox(16);
                        makePreviousBlack(16);
                        setState(() {
                          Image.asset('images/${list[15]}.png');
                        });
                      },
                      child: Image.asset('images/${list[15]}.png',
                          width: 65, height: 90)),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        getBox(17);
                        makePreviousBlack(17);
                        setState(() {
                          Image.asset('images/${list[16]}.png');
                        });
                      },
                      child: Image.asset('images/${list[16]}.png',
                          width: 65, height: 90)),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        getBox(18);
                        makePreviousBlack(18);
                        setState(() {
                          Image.asset('images/${list[17]}.png');
                        });
                      },
                      child: Image.asset('images/${list[17]}.png',
                          width: 65, height: 90)),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        getBox(19);
                        makePreviousBlack(19);
                        setState(() {
                          Image.asset('images/${list[18]}.png');
                        });
                      },
                      child: Image.asset('images/${list[18]}.png',
                          width: 65, height: 90)),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        getBox(20);
                        makePreviousBlack(20);
                        setState(() {
                          Image.asset('images/${list[19]}.png');
                        });
                      },
                      child: Image.asset('images/${list[19]}.png',
                          width: 65, height: 90)),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        getBox(21);
                        makePreviousBlack(21);
                        setState(() {
                          Image.asset('images/${list[20]}.png');
                        });
                      },
                      child: Image.asset('images/${list[20]}.png',
                          width: 65, height: 90)),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        getBox(22);
                        makePreviousBlack(22);
                        setState(() {
                          Image.asset('images/${list[21]}.png');
                        });
                      },
                      child: Image.asset('images/${list[21]}.png',
                          width: 65, height: 90)),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        getBox(23);
                        makePreviousBlack(23);
                        setState(() {
                          Image.asset('images/${list[22]}.png');
                        });
                      },
                      child: Image.asset('images/${list[22]}.png',
                          width: 65, height: 90)),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        getBox(24);
                        makePreviousBlack(24);
                        setState(() {
                          Image.asset('images/${list[23]}.png');
                        });
                      },
                      child: Image.asset('images/${list[23]}.png',
                          width: 65, height: 90)),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        getBox(25);
                        makePreviousBlack(25);
                        setState(() {
                          Image.asset('images/${list[24]}.png');
                        });
                      },
                      child: Image.asset('images/${list[24]}.png',
                          width: 65, height: 90)),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        getBox(26);
                        makePreviousBlack(26);
                        setState(() {
                          Image.asset('images/${list[25]}.png');
                        });
                      },
                      child: Image.asset('images/${list[25]}.png',
                          width: 65, height: 90)),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        getBox(27);
                        makePreviousBlack(27);
                        setState(() {
                          Image.asset('images/${list[26]}.png');
                        });
                      },
                      child: Image.asset('images/${list[26]}.png',
                          width: 65, height: 90)),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        getBox(28);
                        makePreviousBlack(28);
                        setState(() {
                          Image.asset('images/${list[27]}.png');
                        });
                      },
                      child: Image.asset('images/${list[27]}.png',
                          width: 65, height: 90)),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        getBox(29);
                        makePreviousBlack(29);
                        setState(() {
                          Image.asset('images/${list[28]}.png');
                        });
                      },
                      child: Image.asset('images/${list[28]}.png',
                          width: 65, height: 90)),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        getBox(30);
                        makePreviousBlack(30);
                        setState(() {
                          Image.asset('images/${list[29]}.png');
                        });
                      },
                      child: Image.asset('images/${list[29]}.png',
                          width: 65, height: 90)),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        getBox(31);
                        makePreviousBlack(31);
                        setState(() {
                          Image.asset('images/${list[30]}.png');
                        });
                      },
                      child: Image.asset('images/${list[30]}.png',
                          width: 65, height: 90)),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        getBox(32);
                        makePreviousBlack(32);
                        setState(() {
                          Image.asset('images/${list[31]}.png');
                        });
                      },
                      child: Image.asset('images/${list[31]}.png',
                          width: 65, height: 90)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
