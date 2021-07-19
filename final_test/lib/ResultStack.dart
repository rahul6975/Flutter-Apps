import 'package:flutter/material.dart';

class ResultStack extends StatelessWidget {
  String name;
  String email;
  String gender;
  String phone;
  String age;

  ResultStack(
      {Key? key,
      required this.name,
      required this.email,
      required this.gender,
      required this.phone,
      required this.age})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text("You have entered :"),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text("$name"),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text("$email"),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text("$gender"),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text("$phone"),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text("$age"),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
