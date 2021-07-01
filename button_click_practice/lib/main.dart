import 'GameBody2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Dice Game",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
        body: GameBody2(),
        backgroundColor: Colors.white,
      ),
    ),
  );
}

class GameBody extends StatelessWidget {
  final int dice1Number = 0;
  final int dice2Number = 0;
  Widget getFlatButtonWithImage(var value, int image) {
    return FlatButton(
      onPressed: () {},
      child: Image.asset('images/dice$image.png'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                  color: Colors.blue, child: getFlatButtonWithImage("1", 1)),
            ),
            Expanded(
              child: Container(
                  color: Colors.blue, child: getFlatButtonWithImage("2", 2)),
            ),
          ],
        ),
      ),
    );
  }
}
