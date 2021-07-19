import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Successful extends StatelessWidget {
  const Successful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Successful"),
      ),
      body: Center(
        child: Lottie.asset("assets/success.json"),
      ),
    );
  }
}
