import 'package:flutter/material.dart';
import 'Question1.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("KBC Contest"),
        ),
        body: Question1(),
      ),
      
    ),
  );
}