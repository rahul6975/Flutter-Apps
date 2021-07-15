import 'package:flutter/material.dart';

class Balance extends StatelessWidget {
  const Balance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 100,
      color: Colors.white70,
      child: Stack(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Text(
                  "   Detail Balance",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Image.asset('images/alllines.JPG'),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 55, right: 40),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Image.asset('images/credit.JPG'),
                ),
                Expanded(
                  child: Image.asset('images/debit.JPG'),
                ),
                Expanded(
                  child: Image.asset('images/others.JPG'),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50, left: 30),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Credit",
                    style: TextStyle(color: Colors.black, fontSize: 13),
                  ),
                ),
                Expanded(
                  child: Text(
                    "Debit",
                    style: TextStyle(color: Colors.black, fontSize: 13),
                  ),
                ),
                Expanded(
                  child: Text(
                    "Others",
                    style: TextStyle(color: Colors.black, fontSize: 13),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 100, left: 35),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "1400",
                    style: TextStyle(color: Colors.black, fontSize: 13),
                  ),
                ),
                Expanded(
                  child: Text(
                    "${400}",
                    style: TextStyle(color: Colors.black, fontSize: 13),
                  ),
                ),
                Expanded(
                  child: Text(
                    "${200}",
                    style: TextStyle(color: Colors.black, fontSize: 13),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}