import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Play with Me'),
        backgroundColor: Colors.brown,
      ),
      body: SafeArea(child: MusicPage()),
      backgroundColor: Colors.black,
    ),
  ));
}

class MusicPage extends StatefulWidget {
  const MusicPage({Key? key}) : super(key: key);

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  void playMusic(int musicNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$musicNumber.wav'));
  }

  Expanded pressKey({color, keyNumber}) {
    return Expanded(
      child: TextButton(
        style: FilledButton.styleFrom(
          backgroundColor: color,
        ),
        child: Text(''),
        onPressed: () {
          playMusic(keyNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        pressKey(color: Colors.red, keyNumber: 1),
        pressKey(color: Colors.pink, keyNumber: 2),
        pressKey(color: Colors.orange, keyNumber: 3),
        pressKey(color: Colors.yellow, keyNumber: 4),
        pressKey(color: Colors.purple, keyNumber: 5),
        pressKey(color: Colors.green, keyNumber: 6),
        pressKey(color: Colors.orange, keyNumber: 7),
      ],
    );
  }
}
