import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Data(),
      child: MaterialApp(
        home: MyApp(),
      ),
    ),
  );
}

class Data extends ChangeNotifier {
  List<Widget> list = [];
  void addTask(String task) {
    list.add(
      Container(
        margin: EdgeInsets.all(30),
        child: Row(
          children: [
            Expanded(
              child: Text(
                task,
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Image.asset(
                'assets/remove.png',
                width: 20,
                height: 20,
              ),
            ),
          ],
        ),
      ),
    );
    notifyListeners();
  }

  void deleteTask() {
    list.removeLast();
    notifyListeners();
  }
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> list = [];
  String task = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tasks Manager"),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: AddTasks(),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Data data = Provider.of<Data>(context, listen: false);
                      data.deleteTask();
                    },
                    child: Text("Delete Task"),
                  ),
                ),
              ),
            ],
          ),
          Container(
            color: Colors.cyan,
            width: 380,
            height: 500,
            child: ListView(
              children: Provider.of<Data>(context).list,
            ),
          ),
        ],
      ),
    );
  }
}

class AddTasks extends StatelessWidget {
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
                    Data data = Provider.of<Data>(context, listen: false);
                    data.addTask(controller.text);
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
