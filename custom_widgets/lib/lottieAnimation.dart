import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimations extends StatefulWidget {
  LottieAnimations({Key? key}) : super(key: key);

  @override
  _LottieAnimationsState createState() => _LottieAnimationsState();
}

class _LottieAnimationsState extends State<LottieAnimations>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lottie"),
        ),
        body: ListView(
          children: [
            Lottie.asset(
              'assets/LottieLogo1.json',
              controller: _controller,
              onLoaded: (composition) {
                // Configure the AnimationController with the duration of the
                // Lottie file and start the animation.
                _controller
                  ..duration = composition.duration
                  ..forward();
              },
            ),
          ],
        ),
      ),
    );
  }
}
