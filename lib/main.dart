import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  Future<void> playSound(int soundNumber) async {
    final player = AudioPlayer();
    await player.play(
      AssetSource('note$soundNumber.wav'),
    );
  }

  Widget buildKey({required int soundNumber, required Color color}) {
    return Expanded(
      child: FilledButton(
        onPressed: () {
          playSound(soundNumber);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(color),
          enableFeedback: false,
          shape: const MaterialStatePropertyAll<OutlinedBorder>(
            BeveledRectangleBorder(),
          ),
        ),
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(soundNumber: 1, color: Colors.red),
              buildKey(soundNumber: 2, color: Colors.orange),
              buildKey(soundNumber: 3, color: Colors.yellow),
              buildKey(soundNumber: 4, color: Colors.lightGreen),
              buildKey(soundNumber: 5, color: Colors.green),
              buildKey(soundNumber: 6, color: Colors.blue),
              buildKey(soundNumber: 7, color: Colors.deepPurple),
            ],
          ),
        ),
      ),
    );
  }
}
