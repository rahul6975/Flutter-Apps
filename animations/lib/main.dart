import 'package:animations/Widgett.dart';
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
        print(controller?.value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.withOpacity(1),
      appBar: AppBar(
        title: Text("Animations"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Widgett(
            color1: Colors.red,
            color2: Colors.blue,
            color3: Colors.green,
            child: Text("Main"),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "page2");
                  },
                  child: Text(
                    "Go to second page",
                    style: TextStyle(color: Colors.yellow, fontSize: value),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Hero(
                  tag: "Hero",
                  child: Expanded(
                    child: Image(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"),
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
