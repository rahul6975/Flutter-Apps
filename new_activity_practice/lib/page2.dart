import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lifecycle"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Text("page 2"),
              ),
              // ignore: deprecated_member_use
              RaisedButton(
                color: Colors.green,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Go back",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
