import 'package:flutter/material.dart';
import 'Page2.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      routes: {
        'page2': (context) => Page2(),
      },
    ),
  );
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animations"),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "page2");
                  },
                  child: Text("Go to second page"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
