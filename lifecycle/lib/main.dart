import 'package:flutter/material.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController nameController = TextEditingController();
  TextEditingController agecontroller = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  List<Widget> list = [];
  bool nameVisible = false;
  bool ageVisible = false;
  bool phoneVisible = false;

  void showName() {
    setState(() {
      nameVisible = true;
    });
  }

  void showAge() {
    setState(() {
      ageVisible = true;
    });
  }

  void sendData(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Result(
            name: nameController.text,
            age: agecontroller.text,
            phone: phoneController.text),
      ),
    );
  }

  void showPhone() {
    setState(() {
      phoneVisible = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lifecycle"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      showName();
                    },
                    child: Image.asset(
                      'images/add.png',
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Visibility(
                  visible: nameVisible,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "Whats your name",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          controller: nameController,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      showAge();
                    },
                    child: Image.asset(
                      'images/add.png',
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Visibility(
                  visible: ageVisible,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "Whats your age",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          controller: agecontroller,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      showPhone();
                    },
                    child: Image.asset(
                      'images/add.png',
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Visibility(
                  visible: phoneVisible,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "Whats your phone number",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          controller: phoneController,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: ElevatedButton(
              onPressed: () {
                sendData(context);
              },
              child: Text(
                "Procced",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
