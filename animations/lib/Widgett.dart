import 'package:flutter/material.dart';

class Widgett extends StatelessWidget {
  Widgett(
      {required this.color1,
      required this.color2,
      required this.color3,
      required this.child});

  Color color1;
  Color color2;
  Color color3;
  Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          color: color1,
          child: SizedBox(
            height: 300,
            width: 300,
          ),
        ),
        Container(
          color: color2,
          child: SizedBox(
            height: 200,
            width: 200,
          ),
        ),
        Container(
          color: color3,
          child: SizedBox(
            height: 100,
            width: 100,
          ),
        ),
        child,
      ],
    );
  }
}
