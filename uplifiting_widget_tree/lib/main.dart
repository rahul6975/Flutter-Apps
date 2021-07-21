import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int count = 0;

  void updateWidget() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("state manager"),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Text(
                "$count",
                style: TextStyle(fontSize: 25),
              ),
            ),
            Expanded(
              child: Level1(),
            ),
            Expanded(
              child: Level2(count: count, update: updateWidget),
            ),
          ],
        ),
      ),
    );
  }
}

class Level1 extends StatefulWidget {
  const Level1({Key? key}) : super(key: key);

  @override
  _Level1State createState() => _Level1State();
}

class _Level1State extends State<Level1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Text("Level 1"),
      ),
    );
  }
}

class Level2 extends StatelessWidget {
  late int count;
  late Function update;
  Level2({required this.count, required this.update});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: Container(
            child: Text("Level 2:  $count"),
          ),
        ),
        Container(
          child: Container(
            child: Level3(count: count),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            update();
          },
          child: Text("+"),
        ),
      ],
    );
  }
}

class Level3 extends StatelessWidget {
  late int count;

  Level3({required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("count 3 : $count"),
    );
  }
}
