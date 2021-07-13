import 'package:flutter/material.dart';

class AllTeams extends StatelessWidget {
  final List<Widget> list;
  const AllTeams({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("All Teams"),
      ),
      body: ListView(
        children: list,
      ),
    );
  }
}
