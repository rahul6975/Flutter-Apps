import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Text("page 1"),
            ),
            Expanded(
              child: ElevatedButton(
                child: Text(
                  "Go next",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'login');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
