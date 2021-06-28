import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("First App"),
        ),
        body: Center(
          child: Image.asset('images/dp.jpeg'),
        ),
      ),
    ),
  );
}
