import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int sound) {
    final player = AudioCache();
    player.play('note$sound.wav');
  }

  Widget buildKey(){
    Expanded(
      child: FlatButton(
        color: Colors.red,
        onPressed: () {
          playSound(1);
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
          buildKey(),
          buildKey(),
              buildKey(),
              buildKey(),
              buildKey(),
      ),
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
