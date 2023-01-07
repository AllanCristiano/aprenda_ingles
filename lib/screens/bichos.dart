import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Bichos extends StatefulWidget {
  const Bichos({super.key});

  @override
  State<Bichos> createState() => _BichosState();
}

class _BichosState extends State<Bichos> {
  final AudioPlayer _audioPlayer = AudioPlayer();

  _play(String audio) async {
    await _audioPlayer.setSource(AssetSource("audios/$audio"));
    await _audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            GestureDetector(
              onTap: () {
                _play("cao.mp3");
              },
              child: Image.asset("assets/images/cao.png"),
            ),
            GestureDetector(
              onTap: () {
                _play("gato.mp3");
              },
              child: Image.asset("assets/images/gato.png"),
            ),
            GestureDetector(
              onTap: () {
                _play("leao.mp3");
              },
              child: Image.asset("assets/images/leao.png"),
            ),
            GestureDetector(
              onTap: () {
                _play("macaco.mp3");
              },
              child: Image.asset("assets/images/macaco.png"),
            ),
            GestureDetector(
              onTap: () {
                _play("ovelha.mp3");
              },
              child: Image.asset("assets/images/ovelha.png"),
            ),
            GestureDetector(
              onTap: () {
                _play("vaca.mp3");
              },
              child: Image.asset("assets/images/vaca.png"),
            ),
          ],
        ));
  }
}
