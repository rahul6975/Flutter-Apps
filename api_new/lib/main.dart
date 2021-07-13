import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Cross Platform"),
        ),
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> fruits = ['Oranges', 'Apples', 'Bananas'];
  String? cartItem = 'No Items';
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

  DropdownButton getAndroiDropDown() {
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

  Widget getPlatformSpecific() {
    if (Platform.isIOS) {
      return getIosDropdown();
    } else {
      return getAndroiDropDown();
    }
  }

  getIosDropdown() {
    List<Widget> list = [];
    return CupertinoPicker(
        itemExtent: 30.0,
        onSelectedItemChanged: (onSelectedItemChanged) {
          fruits.forEach((element) {
            list.add(Text('$element'));
          });
          setState(() {
            cartItem = fruits[onSelectedItemChanged];
          });
        },
        children: list);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Container(
              child: getPlatformSpecific(),
            ),
          ),
          SizedBox(
            height: 10.0,
            width: 30.0,
          ),
          Expanded(
            child: Text('$cartItem'),
          ),
        ],
      ),
    );
  }
}
