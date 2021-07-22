import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Data(),
      child: MaterialApp(
        home: HomePage(),
      ),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int count = 0;

  void updateWidget() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("state manager"),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Ok",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      count++;
                      Data data = Provider.of<Data>(context, listen: false);
                      data.addItem();
                    },
                    child: Text("Click me"),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Level2(count: count, update: updateWidget),
            ),
          ],
        ),
      ),
    );
  }
}

class Level2 extends StatelessWidget {
  late int count;
  late Function update;
  Level2({required this.count, required this.update});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: Provider.of<Data>(context).widgetList,
    );
  }
}

class Data extends ChangeNotifier {
  List<Expanded> widgetList = [Expanded(child: Text("1"))];
  int count = 1;
  void addItem() {
    count++;
    widgetList.add(Expanded(child: Text("$count")));
    notifyListeners();
  }
}
