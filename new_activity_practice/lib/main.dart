import 'page2.dart';
import 'package:flutter/material.dart';
import 'page1.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lifecycle"),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Page1(),
        'login': (context) => Page2(),
      },
    ),
  );
}
