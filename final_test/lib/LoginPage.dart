import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Widget getImage() {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        Image.asset(
          "images/boy.png",
          width: 100,
          height: 100,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            getImage(),
            Container(
              color: Colors.white70,
              width: 300,
              height: 100,
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Email :"),
                      ),
                      Expanded(
                          child: TextField(
                        controller: emailController,
                      )),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Password :"),
                      ),
                      Expanded(
                          child: TextField(
                        controller: passwordController,
                      )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
