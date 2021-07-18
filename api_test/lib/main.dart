import 'package:api_test/America.dart';
import 'package:api_test/Details.dart';
import 'package:api_test/SecondPage.dart';
import 'package:api_test/TotalCases.dart';
import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
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
  List<Widget> list = [];
  List<Widget> list2 = [];
  int positive = 0;
  bool visiblee = false;

  void getApi() async {
    try {
      var url1 = Uri.parse('https://api.covidtracking.com/v1/states/info.json');
      var url2 =
          Uri.parse('https://api.covidtracking.com/v1/states/AK/current.json');
      http.Response response = await http.get(url1);
      http.Response response2 = await http.get(url2);
      var jsondData2 =
          convert.jsonDecode(response2.body) as Map<String, dynamic>;
      positive = jsondData2['positive'];
      print(positive);
      if (response.statusCode == 200) {
        var jsondData = convert.jsonDecode(response.body) as List<dynamic>;
        jsondData.forEach((i) {
          var model = America.fromJson(i);
          print(model.name);
          list.add(Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "State Fetched : ${model.name}",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ));
          list2.add(SizedBox(
            width: 400,
            height: 750,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    model.notes,
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ));
          setState(() {
            visiblee = true;
          });
        });
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e.toString() + " exception caught");
    }
  }

  void showCases() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TotalCases(positive: positive),
      ),
    );
  }

  void showApi() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SecondPage(list: list),
      ),
    );
  }

  void showDetails() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Details(list2: list2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text("API Call"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.only(left: 150),
              child: Row(
                children: <Widget>[
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        getApi();
                      },
                      child: Center(child: Text("Get Api")),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            visible: visiblee,
            child: Container(
              margin: EdgeInsets.only(left: 130),
              child: Row(
                children: <Widget>[
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        showApi();
                      },
                      child: Text("Show States"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            visible: visiblee,
            child: Container(
              margin: EdgeInsets.only(left: 100),
              child: Row(
                children: <Widget>[
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        showDetails();
                      },
                      child: Text("Show States Details"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            visible: visiblee,
            child: Container(
              margin: EdgeInsets.only(left: 110),
              child: Row(
                children: <Widget>[
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        showCases();
                      },
                      child: Text("Show Total Cases"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 90, top: 50),
            child: Row(
              children: <Widget>[
                Visibility(
                  visible: visiblee,
                  child: Text("Api fectched successfully :)"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
