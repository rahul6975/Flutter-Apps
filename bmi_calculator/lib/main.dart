import 'package:bmi_calculator/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.black),
      ),
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeClassState createState() => _HomeClassState();
}

class _HomeClassState extends State<HomeScreen> {
  int weight = 60;
  int height = 170;
  int age = 20;
  String message = "";
  double bmi = 0.0;

  void calculateBMI() {
    double totalHeight = (height / 100) * (height / 100);
    bmi = weight / totalHeight;
    if (bmi <= 18.49) {
      message = "Underweight";
    } else if (bmi >= 18.5 && bmi <= 24.99) {
      message = "Normal weight";
    } else if (bmi >= 25 && bmi <= 29.99) {
      message = "Overweight";
    } else if (bmi >= 30) {
      message = "Obese";
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI Calculator",
      theme: new ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.black,
          accentColor: Colors.red,
          backgroundColor: Colors.black),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("BMI Calculator"),
        ),
        body: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Gender',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Image.asset(
                    'images/male.png',
                    width: 100,
                    height: 100,
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'images/female.png',
                    width: 100,
                    height: 100,
                  ),
                )
              ],
            ),
            SizedBox(
              width: 20,
              height: 40,
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('Weight', style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            SizedBox(
              width: 5,
              height: 5,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20,
                  height: 40,
                ),
                Container(
                  height: 50,
                  width: 200,
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Image.asset(
                              'images/minus.png',
                              width: 15,
                              height: 15,
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Center(child: Text("$weight")),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: FlatButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: Image.asset(
                                  'images/plus.png',
                                  width: 15,
                                  height: 15,
                                ),
                              ))),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                  height: 40,
                ),
                Container(
                  height: 50,
                  width: 100,
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: Text(
                          "Kg",
                          style: TextStyle(fontSize: 13, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('Height', style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            SizedBox(
              width: 5,
              height: 5,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20,
                  height: 40,
                ),
                Container(
                  height: 50,
                  width: 200,
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Image.asset(
                              'images/minus.png',
                              width: 15,
                              height: 15,
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(child: Text("$height")),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: FlatButton(
                            onPressed: () {
                              setState(() {
                                height++;
                              });
                            },
                            child: Image.asset(
                              'images/plus.png',
                              width: 15,
                              height: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                  height: 40,
                ),
                Container(
                  height: 50,
                  width: 100,
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: Text(
                          "Cm",
                          style: TextStyle(fontSize: 13, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('Age', style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            SizedBox(
              width: 5,
              height: 5,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20,
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 280,
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: FlatButton(
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                            child: Image.asset(
                              'images/minus.png',
                              width: 15,
                              height: 15,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Center(child: Text("$age")),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: FlatButton(
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                            child: Image.asset(
                              'images/plus.png',
                              width: 15,
                              height: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 20,
              height: 50,
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Align(
                child: ButtonTheme(
                  minWidth: 400.0,
                  height: 50.0,
                  buttonColor: Colors.green,
                  child: RaisedButton(
                    onPressed: () {
                      calculateBMI();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              Result(bmi: bmi, message: message),
                        ),
                      );
                    },
                    child: Text("Calculate"),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
