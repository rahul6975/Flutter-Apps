import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  List<Widget> list = [];
  SecondPage({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("America States"),
      ),
      body: Column(
        children: list,
      ),
    );
  }
}
