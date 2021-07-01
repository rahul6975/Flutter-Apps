import 'package:flutter/material.dart';
import 'dart:math';

class GameBody2 extends StatefulWidget {
  @override
  _GameBody2State createState() => _GameBody2State();
}

class _GameBody2State extends State<GameBody2> {
  int dice1Number = 1;
  int dice2Number = 2;
  var name = "";

  void updateData() {
    setState(() {
      dice1Number = Random().nextInt(6) + 1;
      name = "first";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Row(
          children: <Widget>[
            Text(
              "$name",
              style: TextStyle(fontSize: 15),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                child: FlatButton(
                  onPressed: () {
                    updateData();
                  },
                  child: Image.asset('images/dice$dice1Number.png'),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      dice2Number = Random().nextInt(6) + 1;
                      name = "second";
                    });
                    print("Number 2 $dice2Number");
                  },
                  child: Image.asset('images/dice$dice2Number.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
