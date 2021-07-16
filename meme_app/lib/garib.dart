import 'package:flutter/material.dart';
import 'package:flutter_sinusoidals/flutter_sinusoidals.dart';

class Garib extends StatelessWidget {
  const Garib({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mai Garib Hu"),
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
                    "     Tum Garib kyu ho ?",
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
                      'assets/ohmg.gif',
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
                      'assets/ram.gif',
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
                      'assets/cry.gif',
                      width: 200,
                      height: 200,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              // margin: EdgeInsets.only(top: 5),
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
              image: ExactAssetImage('assets/shut.gif'), fit: BoxFit.cover),
        ),
        child: Center(
          child: Text(
            "gf ne lut liya",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
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
        child: Center(
          child: Text(
            "Jobless hu",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
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
              image: ExactAssetImage('assets/tenor-10.gif'), fit: BoxFit.cover),
        ),
        child: Center(
          child: Text(
            "Chori krta hu",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ),
      ),
    );
  }
}
