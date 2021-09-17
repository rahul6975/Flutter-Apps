import 'package:flutter/material.dart';
import 'package:flutter_sinusoidals/flutter_sinusoidals.dart';

class Middle extends StatelessWidget {
  const Middle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mai Middle Class Hu"),
        ),
        body: Column(
          children: <Widget>[
            Sinusoidal(
              reverse: true,
              model: const SinusoidalModel(
                amplitude: 15,
                waves: 5,
                frequency: -0.5,
              ),
              child: Container(
                height: 50,
                color: Colors.blue,
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "     Tum Middle Class kyu ho ?",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextButton(
                    onPressed: () async {
                      await showDialog(
                          context: context, builder: (_) => ImageDialog2());
                    },
                    child: Image.asset(
                      'assets/table.gif',
                      width: 200,
                      height: 200,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextButton(
                    onPressed: () async {
                      await showDialog(
                          context: context, builder: (_) => ImageDialog3());
                    },
                    child: Image.asset(
                      'assets/com.gif',
                      width: 200,
                      height: 200,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextButton(
                    onPressed: () async {
                      await showDialog(
                          context: context, builder: (_) => ImageDialog());
                    },
                    child: Image.asset(
                      'assets/boy.gif',
                      width: 200,
                      height: 200,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: Sinusoidal(
                model: const SinusoidalModel(
                  amplitude: 15,
                  waves: 5,
                ),
                child: Container(
                  height: 50,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage('assets/smile.gif'), fit: BoxFit.cover),
        ),
      ),
    );
  }
}

class ImageDialog2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage('assets/shabas.gif'), fit: BoxFit.cover),
        ),
      ),
    );
  }
}

class ImageDialog3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage('assets/plz.gif'), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
