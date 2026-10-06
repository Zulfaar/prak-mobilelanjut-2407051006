import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AssetsMedia extends StatefulWidget {
  const AssetsMedia({super.key});

  @override
  State<AssetsMedia> createState() => _AssetsMediaState();
}

class _AssetsMediaState extends State<AssetsMedia> {
  final AudioPlayer audioPlayer = AudioPlayer();
  bool isPlaying = false;

  Future<void> playAudio() async {
    if (isPlaying) {
      await audioPlayer.pause();
      setState(() {
        isPlaying = false;
      });
    } else {
      await audioPlayer.play(AssetSource('audio/music.mp3'));
      setState(() {
        isPlaying = true;
      });
    }
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assets & Media'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // PROFILE
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.blue.shade50,
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/IT.png',
                    width: 180,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Zulfa Riana',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // AUDIO
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey.shade100,
              ),
              child: Column(
                children: [
                  const Icon(
                    Icons.music_note,
                    size: 50,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Music Player',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  IconButton(
                    onPressed: playAudio,
                    iconSize: 55,
                    icon: Icon(
                      isPlaying
                          ? Icons.pause_circle
                          : Icons.play_circle,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        isPlaying
                            ? Icons.volume_up
                            : Icons.volume_off,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        isPlaying ? 'Playing' : 'Paused',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}