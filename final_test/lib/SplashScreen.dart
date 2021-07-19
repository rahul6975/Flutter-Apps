import 'dart:io';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void changeBg() {
    setState(() {
      getColor(Colors.grey);
    });
    Duration duration = Duration(seconds: 5);
    sleep(duration);
    setState(() {
      getColor(Colors.white);
    });
  }

  Color getColor(Color color) {
    return color;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: getColor(Colors.grey),
        appBar: AppBar(
          title: Text("Splash Screen"),
        ),
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[],
            ),
          ],
        ),
      ),
    );
  }
}
