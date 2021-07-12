import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}


class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String url = "";
  void getApi() async {
    var url1 = Uri.parse('https://dog.ceo/api/breeds/image/random');
    http.Response response = await http.get(url1);

    var jsonData = convert.jsonDecode(response.body) as Map<String, dynamic>;
    setState(() {
      url = jsonData['message'];
    });
    print(jsonData['message']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API Call"),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}