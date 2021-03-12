import 'package:flutter/material.dart';
import 'dart:math';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Transform.rotate(
          angle: 25 * pi / 180,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                soundButton(1, Colors.red),
                soundButton(2, Colors.blue),
                soundButton(3, Colors.yellow),
                soundButton(4, Colors.teal),
                soundButton(5, Colors.purple),
                soundButton(6, Colors.green),
                soundButton(7, Colors.pink),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded soundButton(int number, Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(number);
        },
      ),
    );
  }

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
}
