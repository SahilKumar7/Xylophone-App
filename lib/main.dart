import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: FilledButton(
              onPressed: () async {
                final player = AudioPlayer();
                await player.play(
                  AssetSource('note1.wav'),
                );
              },
              style: const ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll<Color>(Colors.redAccent),
                enableFeedback: false,
              ),
              child: const Text(''),
            ),
          ),
        ),
      ),
    );
  }
}
