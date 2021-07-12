import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  List<Widget> list2;
  Details({Key? key, required this.list2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("State Details"),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 10, top: 10),
        child: Column(
          children: list2,
        ),
      ),
    );
  }
}
