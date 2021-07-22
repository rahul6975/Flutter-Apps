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

  void addToList(String tasks) {
    setState(() {
      list.add(Row(
        children: <Widget>[
          Expanded(
            child: Text(
              tasks,
              style: TextStyle(fontSize: 15),
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
            width: 400,
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
  late void addTasks;

  AddTasks({required this.addTasks});

  TextEditingController controller = TextEditingController();

  void addNewsTasks(var string) {}

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
                    addNewsTasks(controller.text);
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
