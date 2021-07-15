import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          title: Text("Animations"),
        ),
        body: Hero(
          tag: "hero",
          child: Center(
            child: Container(
              padding: EdgeInsets.all(20),
              color: Colors.white,
              child: Image.asset(
                'images/image.png',
                width: 300,
                height: 300,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
