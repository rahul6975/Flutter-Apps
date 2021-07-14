import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String url = "";
  void getApi() async {
    http.Response response =
        await http.get(Uri.parse('"https://dog.ceo/api/breeds/image/random"'));

    var jsonData = convert.jsonDecode(response.body) as Map<String, dynamic>;
    if (response.statusCode == 200) {
      url = jsonData['message'];
    }
  }

  @override
  void initState() {
    super.initState();
    getApi();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dio Api"),
        ),
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        getApi();
                      });
                    },
                    child: Text("Hit Me !"),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Image(
                    image: NetworkImage("$url"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
