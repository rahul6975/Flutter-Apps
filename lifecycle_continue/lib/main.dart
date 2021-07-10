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
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double padding = 0.0;
  String value = 'weh200';

  String url = "";

  void getRandomDog() async {
    var url1 = Uri.parse('https://dog.ceo/api/breeds/image/random');
    http.Response response = await http.get(url1);

    var jsonData = convert.jsonDecode(response.body) as Map<String, dynamic>;
    setState(() {
      url = jsonData['message'];
    });
    print(jsonData['message']);
  }

  // @override
  // void initState() {
  //   super.initState();
  //   getRandomDog();
  // }

  @override
  Widget build(BuildContext context) {
    try {
      double.parse(value);
    } catch (e) {
      padding = 30.0;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("API"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  getRandomDog();
                },
                child: Text("Button"),
              ),
              Expanded(
                child: Image(
                  image: NetworkImage(url),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
