import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  List<Widget> list = [];
  SecondPage({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("America States"),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 10, top: 10),
        child: Column(
          children: list,
        ),
      ),
    );
  }
}
