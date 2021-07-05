import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var string = "play";
  bool song1 = false;
  bool song2 = false;
  bool song3 = false;
  bool song4 = false;
  var musicName = [];
  AudioPlayer audioPlayer;
  static AudioCache cache = new AudioCache();
  Future<void> playMusic(int n, String str, String music) async {
    if (n == 1) {
      audioPlayer = await cache.play('death.mp3');
    } else if (n == 2) {
      audioPlayer = await cache.play('all.mp3');
    } else if (n == 3) {
      audioPlayer = await cache.play('pee.mp3');
    } else {
      audioPlayer = await cache.play('kalank.mp3');
    }
  }

  void pause() {
    audioPlayer.pause();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          title: Text("Music App"),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              width: 100,
              height: 300,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    if (musicName.isNotEmpty) {
                      Text(
                        "${musicName[0].toString()}",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      );
                    }
                  });
                },
                child: Text(
                  "${musicName.toString()}",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
            ),
            Divider(
              height: 1,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                color: Colors.yellow,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Death Bed",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          musicName.add("Death bed");
                        },
                        child: Image.asset(
                          "assets/add.png",
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          if (song1 == true) {
                            pause();
                            song1 = false;
                          } else {
                            playMusic(1, "pause", "Death Bed");
                            Image.asset('assets/pause.png');
                            song1 = true;
                          }
                          setState(() {
                            if (song1 == true) {
                              Image.asset('assets/pause.png');
                            }
                          });
                        },
                        child: Image.asset(
                          'assets/play.png',
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                color: Colors.yellow,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "All Of Me",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          musicName.add("All Of me");
                        },
                        child: Image.asset(
                          "assets/add.png",
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          if (song2 == true) {
                            pause();
                            song2 = false;
                          } else {
                            playMusic(2, "pause", "All Of Me");
                            Image.asset('assets/pause.png');
                            song2 = true;
                          }
                          setState(() {
                            if (song2 == true) {
                              Image.asset('assets/pause.png');
                            }
                          });
                        },
                        child: Image.asset(
                          'assets/play.png',
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                color: Colors.yellow,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Pee Loon",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          musicName.add("Pee Loon");
                        },
                        child: Image.asset(
                          "assets/add.png",
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          if (song3 == true) {
                            pause();
                            song3 = false;
                          } else {
                            playMusic(3, "pause", "Pee Loon");
                            Image.asset('assets/pause.png');
                            song3 = true;
                          }
                          setState(() {
                            if (song3 == true) {
                              Image.asset('assets/pause.png');
                            }
                          });
                        },
                        child: Image.asset(
                          'assets/play.png',
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                color: Colors.yellow,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Kalank",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          musicName.add("Kalank");
                        },
                        child: Image.asset(
                          "assets/add.png",
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          if (song4 == true) {
                            pause();
                            song4 = false;
                          } else {
                            playMusic(4, "pause", "Kalank");
                            Image.asset('assets/pause.png');
                            song4 = true;
                          }
                          setState(() {
                            if (song4 == true) {
                              Image.asset('assets/pause.png');
                            }
                          });
                        },
                        child: Image.asset(
                          'assets/play.png',
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
