import 'package:flutter/material.dart';

class ResultStack extends StatelessWidget {
  String name;
  String email;
  String gender;
  String phone;
  String age;
  String password;

  ResultStack(
      {Key? key,
      required this.name,
      required this.email,
      required this.gender,
      required this.phone,
      required this.password,
      required this.age})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 200,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "You have entered :",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "$name",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.brown,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "$email",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.brown,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "$gender",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.brown,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "$phone",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.brown,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "$age",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.brown,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "$password",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.brown,
                          fontWeight: FontWeight.bold),
                    ),
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
