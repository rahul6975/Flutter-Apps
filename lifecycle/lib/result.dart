import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String name;
  final String age;
  final String phone;
  Result(
      {Key? key, required this.name, required this.age, required this.phone});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text("Lifecycle"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 120),
              child: Row(
                children: [
                  Text(
                    "Your data :",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 150),
              child: Row(
                children: [
                  Text(
                    "$name",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 150),
              child: Row(
                children: [
                  Text(
                    "$age",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 150),
              child: Row(
                children: [
                  Text(
                    "$phone",
                    style: TextStyle(color: Colors.black, fontSize: 15),
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
