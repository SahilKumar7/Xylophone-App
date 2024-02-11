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
          side: const MaterialStatePropertyAll<BorderSide>(
            BorderSide(
              width: 1.0,
              color: Colors.black,
            ),
          ),
          shape: const MaterialStatePropertyAll<OutlinedBorder>(
            BeveledRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.elliptical(5, 5),
              ),
            ),
          ),
        ),
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          title: const Text(
            'Xylophone',
            style: TextStyle(
              fontFamily: 'Shantell Sans',
              fontSize: 25,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.teal,
          foregroundColor: const Color(0xFFDBFCFF),
        ),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xffeacda3), Color(0xffd6ae7b)],
                stops: [0, 1],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
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
      ),
    );
  }
}
