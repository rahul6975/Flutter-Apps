import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String answer1;
  final String answer2;
  final String answer3;

  Result(
      {Key key,
      @required this.answer2,
      @required this.answer1,
      @required this.answer3});

  Widget showResult() {
    String result = "";
    if (answer1 == "yes" && answer2 == "yes" && answer3 == "yes") {
      result = "you passed !";
    } else {
      result = "you failed !";
    }
    return Text(
      "$result",
      style: TextStyle(color: Colors.teal, fontSize: 20),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text("KBC Contest"),
      ),
      body: Center(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Your anwers are...",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ))
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "$answer1",
                        style: TextStyle(color: Colors.blue, fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "$answer2",
                        style: TextStyle(color: Colors.blue, fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "$answer3",
                        style: TextStyle(color: Colors.blue, fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: showResult(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
