import 'package:flutter/material.dart';
import 'package:loading_animationns/Page2.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    routes: {
      'page2': (context) => Page2(),
    },
  ));
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
        vsync: this, duration: Duration(seconds: 5), upperBound: 100);

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
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: Text("Animations"),
      ),
      body: Hero(
        tag: "hero",
        child: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            color: Colors.white60,
            child: SizedBox(
              width: 200,
              height: 320,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "My trip to Kaula Lumpur",
                          style: TextStyle(
                              color: Colors.green, fontSize: value / 5),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            "From :",
                            style: TextStyle(
                                color: Colors.black, fontSize: value / 6.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Mumbai, India",
                            style: TextStyle(
                                color: Colors.green, fontSize: value / 5)),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text("Departure :",
                              style: TextStyle(
                                  color: Colors.black, fontSize: value / 6.5)),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("30th July 2021",
                            style: TextStyle(
                                color: Colors.green, fontSize: value / 5)),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text("Return :",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13)),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("30th August 2021",
                            style: TextStyle(
                                color: Colors.green, fontSize: value / 5)),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "page2");
                          },
                          child: Text(
                            "Lets Goooo",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
