import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class PianoPlayer extends StatefulWidget {
  @override
  _PianoPlayerState createState() => _PianoPlayerState();
}

class _PianoPlayerState extends State<PianoPlayer> {
  void playSound(int n) {
    final player = AudioCache();
    player.play('note$n.wav');
  }

  Expanded buildButton(MaterialColor btnColor, int n) {
    return Expanded(
      child: FlatButton(
        color: btnColor,
        onPressed: () {
          playSound(n);
        },
        child: Text("$n"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildButton(Colors.red, 1),
          buildButton(Colors.green, 2),
          buildButton(Colors.blue, 3),
          buildButton(Colors.yellow, 4),
          buildButton(Colors.purple, 5),
          buildButton(Colors.brown, 6),
          buildButton(Colors.orange, 7),
        ],
      ),
    );
  }
}
