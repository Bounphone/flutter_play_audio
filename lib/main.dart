
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home(),);
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final assetAudioPlayer = AssetsAudioPlayer();
  @override
  Widget build(BuildContext context) {
    assetAudioPlayer.open(Audio('assets/complete.wav'));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Audio'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){

          },
          child: const Text('Play audio'),
        ),
      ),
    );
  }
}

