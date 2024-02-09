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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
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
                    shape: MaterialStatePropertyAll<OutlinedBorder>(
                      BeveledRectangleBorder(),
                    ),
                  ),
                  child: const Text(''),
                ),
              ),
              Expanded(
                child: FilledButton(
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(
                      AssetSource('note2.wav'),
                    );
                  },
                  style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.orangeAccent),
                    enableFeedback: false,
                    shape: MaterialStatePropertyAll<OutlinedBorder>(
                      BeveledRectangleBorder(),
                    ),
                  ),
                  child: const Text(''),
                ),
              ),
              Expanded(
                child: FilledButton(
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(
                      AssetSource('note3.wav'),
                    );
                  },
                  style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.yellowAccent),
                    enableFeedback: false,
                    shape: MaterialStatePropertyAll<OutlinedBorder>(
                      BeveledRectangleBorder(),
                    ),
                  ),
                  child: const Text(''),
                ),
              ),
              Expanded(
                child: FilledButton(
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(
                      AssetSource('note4.wav'),
                    );
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Colors.lightGreenAccent),
                    enableFeedback: false,
                    shape: MaterialStatePropertyAll<OutlinedBorder>(
                      BeveledRectangleBorder(),
                    ),
                  ),
                  child: const Text(''),
                ),
              ),
              Expanded(
                child: FilledButton(
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(
                      AssetSource('note5.wav'),
                    );
                  },
                  style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.greenAccent),
                    enableFeedback: false,
                    shape: MaterialStatePropertyAll<OutlinedBorder>(
                      BeveledRectangleBorder(),
                    ),
                  ),
                  child: const Text(''),
                ),
              ),
              Expanded(
                child: FilledButton(
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(
                      AssetSource('note6.wav'),
                    );
                  },
                  style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.blueAccent),
                    enableFeedback: false,
                    shape: MaterialStatePropertyAll<OutlinedBorder>(
                      BeveledRectangleBorder(),
                    ),
                  ),
                  child: const Text(''),
                ),
              ),
              Expanded(
                child: FilledButton(
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(
                      AssetSource('note7.wav'),
                    );
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Colors.deepPurpleAccent),
                    enableFeedback: false,
                    shape: MaterialStatePropertyAll<OutlinedBorder>(
                      BeveledRectangleBorder(),
                    ),
                  ),
                  child: const Text(''),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
