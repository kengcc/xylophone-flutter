import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int key, Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(key);
        },
        color: color,
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
              buildKey(key: 1, color: Colors.red),
              buildKey(key: 2, color: Colors.orange),
              buildKey(key: 3, color: Colors.yellow),
              buildKey(key: 4, color: Colors.green),
              buildKey(key: 5, color: Colors.teal),
              buildKey(key: 6, color: Colors.blue),
              buildKey(key: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
