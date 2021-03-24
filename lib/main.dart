import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playMusic(int value) {
    final player = AudioCache();
    player.play('note$value.wav');
  }

  Expanded buildKey(int value, Color colors) {
    return Expanded(
      flex: 1,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(colors),
        ),
        onPressed: () {
          playMusic(value);
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
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildKey(1, Colors.red),
                buildKey(2, Colors.orange),
                buildKey(3, Colors.yellow),
                buildKey(4, Colors.green),
                buildKey(5, Colors.indigo),
                buildKey(6, Colors.blue),
                buildKey(7, Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
