import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(XylophoneApp());

void playSound(int soundNum) {
  final player = AudioCache();
  player.play('note$soundNum.wav');
}

Expanded buildNote({Color color, int soundNum}) {
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
        playSound(soundNum);
      },
      child: null,
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildNote(color: Colors.red, soundNum: 1),
                buildNote(color: Colors.orange, soundNum: 2),
                buildNote(color: Colors.yellow, soundNum: 3),
                buildNote(color: Colors.green, soundNum: 4),
                buildNote(color: Colors.teal, soundNum: 5),
                buildNote(color: Colors.blue, soundNum: 6),
                buildNote(color: Colors.purple, soundNum: 7),
              ]),
        ),
      ),
    );
  }
}
