import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  //Functions
  void playSound(int sound) {
    final player = AudioCache();
    player.play('note$sound.wav');
  }

  Widget buildKey(Color color, int sound) {
    return new Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(sound);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black,
            body: SafeArea(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    buildKey(Colors.red, 1),
                    buildKey(Colors.orange, 2),
                    buildKey(Colors.yellow, 3),
                    buildKey(Colors.green, 4),
                    buildKey(Colors.greenAccent, 5),
                    buildKey(Colors.blue, 6),
                    buildKey(Colors.purple, 7)
                  ]),
            )));
  }
}

//
//children: <Widget>[
//Container(
//child: FlatButton(
//color: Colors.red,
//onPressed: () {
//playSound(1);
//},
//),
//),
//Container(
//child: FlatButton(
//color: Colors.orange,
//onPressed: () {
//playSound(2);
//},
//),
//),
//FlatButton(
//color: Colors.yellow,
//onPressed: () {
//playSound(3);
//},
//),
//FlatButton(
//color: Colors.green,
//onPressed: () {
//playSound(4);
//},
//),
//FlatButton(
//color: Colors.greenAccent,
//onPressed: () {
//playSound(5);
//},
//),
//FlatButton(
//color: Colors.blue,
//onPressed: () {
//playSound(6);
//},
//),
//FlatButton(
//color: Colors.purple,
//onPressed: () {
//playSound(7);
//},
//)
//]),
