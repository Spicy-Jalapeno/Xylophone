import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(XylophoneApp());

void playSound(int i) {
  final player = AudioCache();
  player.play('note$i.wav');
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(children: <Widget>[
            Expanded(
              child: FlatButton(
                color: Colors.red,
                onPressed: () {
                  playSound(1);
                },
                child: null,
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.orange,
                onPressed: () {
                  playSound(2);
                },
                child: null,
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.yellow,
                onPressed: () {
                  playSound(3);
                },
                child: null,
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.green,
                onPressed: () {
                  playSound(4);
                },
                child: null,
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.teal,
                onPressed: () {
                  playSound(5);
                },
                child: null,
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.lightBlue,
                onPressed: () {
                  playSound(6);
                },
                child: null,
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.purple,
                onPressed: () {
                  playSound(7);
                },
                child: null,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
