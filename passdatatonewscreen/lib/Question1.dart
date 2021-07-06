import 'package:flutter/material.dart';
import 'package:passdatatonewscreen/Question2.dart';

// ignore: must_be_immutable
class Question1 extends StatelessWidget {
  TextEditingController textEditingController = TextEditingController();

  void sendDataToSecond(BuildContext context) {
    String ans = textEditingController.text;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Question2(answer: ans),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Do you consider me your hero ?",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ))
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        controller: textEditingController,
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              sendDataToSecond(context);
                            },
                            child: Text(
                              "Submit",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10),
                            ))),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
