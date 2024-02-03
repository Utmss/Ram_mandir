import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BhagwanRamMusicPlayer(),
    );
  }
}

class BhagwanRamMusicPlayer extends StatefulWidget {
  @override
  _BhagwanRamMusicPlayerState createState() => _BhagwanRamMusicPlayerState();
}

class _BhagwanRamMusicPlayerState extends State<BhagwanRamMusicPlayer> {
  AudioPlayer audioPlayer = AudioPlayer(); // Explicit instantiation
  String audioUrl =
      'https://www.jiosaavn.com/song/ram-aayenge/BCoHfzphdgU'; // Replace with your Bhagwan Ram song URL
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    audioPlayer.onPlayerStateChanged.listen((state) {
      if (state == 1) {
        setState(() {
          isPlaying = true;
        });
      } else if (state == 3 || state == 4) {
        setState(() {
          isPlaying = false;
        });
      }
    });
  }

  Future<void> playPause() async {
    if (isPlaying) {
      await audioPlayer.pause();
    } else {
      await audioPlayer.play(
          UrlSource("https://www.jiosaavn.com/song/ram-aayenge/BCoHfzphdgU"));
    }
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 235, 164, 76),
        title: Text(
          "Bhagwan RAM Bhajan",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(' Bhagwan Ram Song'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                playPause();
              },
              child: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }
}
