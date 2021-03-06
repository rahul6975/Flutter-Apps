import 'package:flutter/material.dart';

class TotalCases extends StatelessWidget {
  final int positive;
  TotalCases({Key? key, required this.positive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text("Total Positive cases"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 30),
            child: Text(
              "Total positive cases recorded : $positive",
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
