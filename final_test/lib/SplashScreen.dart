import 'dart:io';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Color? color;

  void changeBg() {
    setState(() {
      color = Colors.black;
    });
    // sleep(Duration(seconds: 3));
    setState(() {
      color = Colors.white;
    });
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
          children: <Widget>[
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Center(
                      child: Text("color changing"),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: ElevatedButton(
                    onPressed: () {},
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
