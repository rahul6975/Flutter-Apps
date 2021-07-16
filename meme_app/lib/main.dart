import 'package:flutter/material.dart';
// @dart = 2.9
import 'package:flutter_sinusoidals/flutter_sinusoidals.dart';
import 'package:meme_app/amir.dart';
import 'package:meme_app/garib.dart';

import 'middle.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      routes: {
        'amir': (context) => Amir(),
        'middle': (context) => Middle(),
        'garib': (context) => Garib(),
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Memes"),
      ),
      body: Column(
        children: <Widget>[
          Sinusoidal(
            reverse: true,
            model: const SinusoidalModel(
              amplitude: 15,
              waves: 5,
              frequency: -0.5,
            ),
            child: Container(
              height: 50,
              color: Colors.blue,
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "amir");
                  },
                  child: Image.asset(
                    'assets/amir.gif',
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "middle");
                  },
                  child: Image.asset(
                    'assets/middle.gif',
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "garib");
                  },
                  child: Image.asset(
                    'assets/garib.gif',
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 23),
            child: Sinusoidal(
              model: const SinusoidalModel(
                amplitude: 15,
                waves: 5,
              ),
              child: Container(
                height: 50,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
