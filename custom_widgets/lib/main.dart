// @dart=2.9
import 'package:custom_widgets/balance.dart';
import 'package:custom_widgets/lottieAnimation.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sinusoidals/flutter_sinusoidals.dart';
import 'IncomeExpense.dart';
import 'package:flip_card/flip_card.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Custom Widgets"),
        ),
        body: _SinusoidalDemo(),
      ),
    ),
  );
}

Widget flip() {
  return FlipCard(
    direction: FlipDirection.HORIZONTAL, // default
    front: Container(
      child: Text('Front'),
    ),
    back: Container(
      child: Text('Back'),
    ),
  );
}

class _SinusoidalDemo extends StatelessWidget {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  GlobalKey<FlipCardState> hello = GlobalKey<FlipCardState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 32),
        Sinusoidal(
          reverse: true,
          model: const SinusoidalModel(
            amplitude: 15,
            waves: 5,
            frequency: -0.5,
          ),
          child: Container(
            height: 100,
            color: Colors.blue,
          ),
        ),
        FlipCard(
          key: cardKey,
          flipOnTouch: true,
          front: Container(
            child: RaisedButton(
              onPressed: () => cardKey.currentState.toggleCard(),
              child: Balance(),
            ),
          ),
          back: Container(
            child: Icome(),
          ),
        ),
        const SizedBox(height: 50),
        Sinusoidal(
          model: const SinusoidalModel(
            amplitude: 15,
            waves: 5,
          ),
          child: Container(
            height: 100,
            color: Colors.blue,
          ),
        ),
        // FlipCard(
        //   key: hello,
        //   flipOnTouch: true,
        //   front: Container(
        //     margin: EdgeInsets.only(top: 200),
        //     child: RaisedButton(
        //       onPressed: () => hello.currentState.toggleCard(),
        //       child: Image.asset(
        //         'images/grap.png',
        //         width: 300,
        //         height: 100,
        //       ),
        //     ),
        //   ),
        //   back: Container(
        //     child: ListView(
        //       children: [
        //         Lottie.asset(
        //           'assets/graph.json',
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        const SizedBox(height: 50),
        Sinusoidal(
          model: const SinusoidalModel(
            formular: WaveFormular.standing,
            translate: 5.0,
            amplitude: 25,
            waves: 2,
            frequency: 0.5,
          ),
          child: Container(
            height: 100,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
