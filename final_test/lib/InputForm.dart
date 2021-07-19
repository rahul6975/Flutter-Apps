import 'package:final_test/ResultStack.dart';
import 'package:flutter/material.dart';

class InputForm extends StatefulWidget {
  InputForm({Key? key}) : super(key: key);

  @override
  _InputFormState createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  List<String> gender = ['Male', 'Female', 'Cant Specify'];
  List<String> age = ['10-20', '21-30', '31-90'];
  String? genderCart = 'Female';
  String? ageCart = '10-20';
  bool visible = false;
  bool isVisible = true;

  TextEditingController controller = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  List<DropdownMenuItem<String>> getGender() {
    List<DropdownMenuItem<String>> items = [];
    gender.forEach((element) {
      var eachItem = DropdownMenuItem(
        child: Text('$element'),
        value: element,
      );
      items.add(eachItem);
    });
    return items;
  }

  List<DropdownMenuItem<String>> getAge() {
    List<DropdownMenuItem<String>> items = [];
    age.forEach((element) {
      var eachItem = DropdownMenuItem(
        child: Text('$element'),
        value: element,
      );
      items.add(eachItem);
    });
    return items;
  }

  DropdownButton getAndroidDropDownGender() {
    return DropdownButton<String>(
      value: '$genderCart',
      items: getGender(),
      onChanged: (value) {
        setState(() {
          genderCart = value;
        });
      },
    );
  }

  DropdownButton getAndroidDropDownAge() {
    return DropdownButton<String>(
      value: '$ageCart',
      items: getAge(),
      onChanged: (value) {
        setState(() {
          ageCart = value;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text("Registration Form"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text("Enter Name :"),
                ),
                Expanded(
                  child: TextField(
                    controller: controller,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text("Enter Email :"),
                ),
                Expanded(
                  child: TextField(
                    controller: emailController,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text("Enter Gender :"),
                ),
                Expanded(
                  child: getAndroidDropDownGender(),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text("Enter Phone :"),
                ),
                Expanded(
                  child: TextField(
                    controller: phoneController,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text("Enter Age :"),
                ),
                Expanded(
                  child: getAndroidDropDownAge(),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text("Set Password :"),
                ),
                Expanded(
                  child: TextField(
                    controller: passwordController,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Visibility(
              visible: isVisible,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          visible = true;
                          isVisible = false;
                        });
                      },
                      child: Text("Submit "),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.cyanAccent,
            margin: EdgeInsets.all(10),
            child: Visibility(
              visible: visible,
              child: ResultStack(
                password: passwordController.text.toString(),
                name: controller.text.toString(),
                age: "21",
                phone: phoneController.text.toString(),
                gender: genderCart.toString(),
                email: emailController.text.toString(),
              ),
            ),
          ),
          Container(
            child: Visibility(
              visible: visible,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Proceed"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
