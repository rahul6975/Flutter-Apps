import 'package:flutter/material.dart';
import 'package:yocket_test/SearchWidget.dart';

class ResturantList extends StatelessWidget {
  late List<Widget> list;

  ResturantList({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sorry"),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: SearchWidget(),
              ),
            ],
          ),
          // Row(
          //   children: <Widget>[
          //     Expanded(
          //       child: ListView(
          //         children: list,
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
