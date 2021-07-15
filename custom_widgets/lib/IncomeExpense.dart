import 'package:flutter/material.dart';

class Icome extends StatelessWidget {
  const Icome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Image.asset('images/up.JPG'),
            ),
            Expanded(
              child: Text("Income"),
            ),
            Row(
              children: [Text("5,900")],
            ),
            Expanded(
              child: Image.asset('images/down.JPG'),
            ),
            Expanded(
              child: Text("Expense"),
            ),
            Row(
              children: [Text("2,540")],
            ),
          ],
        ),
      ],
    );
  }
}
