import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MusicPlayer extends StatefulWidget {
  @override
  _MusicPlayerState createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  var isPlaying = "play";
  var string = "";
  AudioPlayer audioPlayer;
  static AudioCache player = new AudioCache();
  Future<void> play(var string) async {
    this.string = string;
    audioPlayer = await player.play("$string.mp3");
    isPlaying = "pause";
  }

  void pause() {
    audioPlayer.pause();
    isPlaying = "play";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 10),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "News",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              Expanded(
                child: Text(
                  "Inspo",
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ),
              Expanded(
                child: Text(
                  "Popular",
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 60),
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child:
                      Image.asset('assets/brown.png', width: 200, height: 100),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      play("brown");
                    },
                    child: Text(
                      "Brown Munde",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              children: <Widget>[
                Expanded(
                  child:
                      Image.asset('assets/chahe.png', width: 200, height: 100),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      play("chahe");
                    },
                    child: Text(
                      "Tuhje Kitna Chahe Or Hum",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              children: <Widget>[
                Expanded(
                  child:
                      Image.asset('assets/kalank.png', width: 200, height: 100),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      play("kalank");
                    },
                    child: Text(
                      "Kalank Title Track",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 170),
          child: Divider(thickness: 1, color: Colors.white),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    pause();
                    setState(() {
                      Image.asset(
                        'assets/$isPlaying.png',
                        color: Colors.white,
                      );
                    });
                  },
                  child: Image.asset(
                    'assets/$isPlaying.png',
                    width: 50,
                    height: 50,
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  "$string  (Now playing)",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
