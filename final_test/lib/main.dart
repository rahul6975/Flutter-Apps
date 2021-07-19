import 'package:final_test/InputForm.dart';
import 'package:final_test/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        "form": (context) => InputForm(),
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
  List<String> fruits = ['Oranges', 'Apples', 'Bananas'];
  String? cartItem = 'No Items';
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

  List<DropdownMenuItem<String>> getItems() {
    List<DropdownMenuItem<String>> items = [];
    fruits.forEach((element) {
      var eachItem = DropdownMenuItem(
        child: Text('$element'),
        value: element,
      );
      items.add(eachItem);
    });
    return items;
  }

  DropdownButton getAndroidDropDown() {
    return DropdownButton<String>(
      value: 'Apples',
      items: getItems(),
      onChanged: (value) {
        setState(() {
          cartItem = value;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
