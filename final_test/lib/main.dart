import 'package:final_test/InputForm.dart';
import 'package:final_test/LoginPage.dart';
import 'package:final_test/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        "form": (context) => InputForm(),
        "login": (context) => LoginPage(),
      },
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  AnimationController? controller;
  double value = 0.0;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: Duration(seconds: 1), upperBound: 100);

    controller?.forward();

    controller?.addListener(() {
      setState(() {
        value = controller!.value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
