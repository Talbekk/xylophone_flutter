import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(int keyNumber, Color keyColor) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(keyNumber);
        },
        color: keyColor,
        child: const Text(''),
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
              buildKey(1, Colors.blue),
              buildKey(2, Colors.red),
              buildKey(3, Colors.green),
              buildKey(4, Colors.orange),
              buildKey(5, Colors.purple),
              buildKey(6, Colors.yellow),
              buildKey(7, Colors.teal),
            ],
          ),
        ),
      ),
    );
  }
}
