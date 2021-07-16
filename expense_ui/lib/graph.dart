import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Graph extends StatelessWidget {
  const Graph({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(left: 30, top: 30),
        width: 300,
        height: 200,
        color: Colors.brown,
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 5, left: 5),
              child: Row(
                children: <Widget>[
                  Text(
                    "Outcome",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 5),
              child: Row(
                children: <Widget>[
                  Text(
                    "Rs. 12,560.00",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ],
              ),
            ),
            Lottie.asset('assets/graph.json', width: 300, height: 300),
          ],
        ),
      ),
    );
  }
}
