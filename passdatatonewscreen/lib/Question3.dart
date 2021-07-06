import 'package:flutter/material.dart';
import 'package:passdatatonewscreen/Result.dart';

class Question3 extends StatelessWidget {
  final String answer2;
  final String answer1;

  TextEditingController _textEditingController = TextEditingController();

  Question3({Key key, @required this.answer2, @required this.answer1})
      : super(key: key);

  void sendDataToResult(BuildContext context) {
    String ans = _textEditingController.text;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Result(
          answer2: answer2,
          answer1: answer1,
          answer3: ans,
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
                      "Am i good at Android ?",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ))
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        controller: _textEditingController,
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
                              sendDataToResult(context);
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
