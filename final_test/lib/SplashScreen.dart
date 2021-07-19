import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Color? color;
  List<Color> list = [Colors.black45, Colors.grey, Colors.blue, Colors.yellow];

  void changeBg() {
    for (int i = 0; i < 4; i++) {
      setState(() {
        color = list[i];
      });
      sleep(Duration(seconds: 3));
    }
  }

  @override
  void initState() {
    super.initState();
    changeBg();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: color,
        appBar: AppBar(
          title: Text("Splash Screen"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "form");
                    },
                    child: Text("Go to next"),
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
