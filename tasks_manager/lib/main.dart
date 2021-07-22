import 'package:flutter/material.dart';

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
  String task = "";

  void addToList(String tasks) {
    setState(() {
      list.add(Row(
        children: <Widget>[
          Expanded(
            child: Text(
              "Hello",
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
          ),
        ],
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tasks Manager"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.blue,
            width: 300,
            height: 400,
            child: ListView(
              children: list,
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: AddTasks(
                  addTasks: addToList,
                  task: task,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AddTasks extends StatelessWidget {
  late Function addTasks;
  late String task;

  AddTasks({required this.addTasks, required this.task});

  TextEditingController controller = TextEditingController();

  void showBottomSheet(var context) {
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
        ),
        builder: (context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Image.asset(
                  'assets/add.png',
                  width: 20,
                  height: 20,
                ),
                title: TextField(
                  controller: controller,
                ),
                subtitle: ElevatedButton(
                  onPressed: () {
                    addTasks(controller.text);
                  },
                  child: Text("Add"),
                ),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          showBottomSheet(context);
        },
        child: Text("Add Tasks"),
      ),
    );
  }
}
