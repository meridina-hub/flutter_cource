import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cource/xylophone_app/xylophone_widget.dart';

class XylophoneScreen extends StatefulWidget {
  const XylophoneScreen({super.key});

  @override
  State<XylophoneScreen> createState() => _XlyphoneScreenState();
}

class _XlyphoneScreenState extends State<XylophoneScreen> {
  late final AudioPlayer _audioPlayer;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose;
  }

  Future<void> playSound(int soundnumber) async {
    await _audioPlayer.stop();
    await _audioPlayer.play(AssetSource('xylophone/note_$soundnumber.wav'));
  }

  @override
  Widget build(BuildContext) {
    return Scaffold(
      backgroundColor: const Color(0xff2b2b2b),
      appBar: AppBar(
        backgroundColor: const Color(0xff2b2b2b),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Xylophone App',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            XylophoneWidget(
              color: const Color(0xffef4430),
              onTap: () => playSound(1),
            ),
            XylophoneWidget(
              color: const Color(0xfff97316),
              onTap: () => playSound(2),
            ),
            XylophoneWidget(
              color: const Color(0xfffacc13),
              onTap: () => playSound(3),
            ),
            XylophoneWidget(
              color: const Color(0xff22c55e),
              onTap: () => playSound(4),
            ),
            XylophoneWidget(
              color: const Color(0xff0d9488),
              onTap: () => playSound(5),
            ),
            XylophoneWidget(
              color: const Color(0xff3b82f6),
              onTap: () => playSound(6),
            ),
            XylophoneWidget(
              color: const Color(0xfff933ea),
              onTap: () => playSound(7),
            ),
          ],
        ),
      ),
    );
  }
}
