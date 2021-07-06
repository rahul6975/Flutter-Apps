import 'package:flutter/material.dart';

import 'Question3.dart';

class Question2 extends StatelessWidget {
  final String answer;

  Question2({Key key, @required this.answer}) : super(key: key);

  TextEditingController controller = TextEditingController();

  void sendDataToThird(BuildContext context) {
    String ans = controller.text;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Question3(
          answer2: ans,
          answer1: answer,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text("KBC Contest"),
      ),
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
                      "Am i good at Flutter ?",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ))
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        controller: controller,
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
                              sendDataToThird(context);
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
