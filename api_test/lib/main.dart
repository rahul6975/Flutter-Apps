import 'package:api_test/America.dart';
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
  void getApi() async {
    var url1 = Uri.parse('https://api.covidtracking.com/v1/states/info.json');
    http.Response response = await http.get(url1);
    var jsondData = convert.jsonDecode(response.body) as List<dynamic>;

    jsondData.forEach((element) {
      var model = America.fromJson(element);
      print(model.state);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API Call"),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  getApi();
                },
                child: Text("Get Api"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
