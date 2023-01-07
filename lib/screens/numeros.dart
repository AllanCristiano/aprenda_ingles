import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Numeros extends StatefulWidget {
  const Numeros({super.key});

  @override
  State<Numeros> createState() => _NumerosState();
}

class _NumerosState extends State<Numeros> {
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
                _play("1.mp3");
              },
              child: Image.asset("assets/images/1.png"),
            ),
            GestureDetector(
              onTap: () {
                _play("2.mp3");
              },
              child: Image.asset("assets/images/2.png"),
            ),
            GestureDetector(
              onTap: () {
                _play("3.mp3");
              },
              child: Image.asset("assets/images/3.png"),
            ),
            GestureDetector(
              onTap: () {
                _play("4.mp3");
              },
              child: Image.asset("assets/images/4.png"),
            ),
            GestureDetector(
              onTap: () {
                _play("5.mp3");
              },
              child: Image.asset("assets/images/5.png"),
            ),
            GestureDetector(
              onTap: () {
                _play("6.mp3");
              },
              child: Image.asset("assets/images/6.png"),
            ),
          ],
        ));
  }
}
