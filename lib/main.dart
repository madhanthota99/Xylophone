import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void audio(int change) {
    final player = AudioCache();
    player.play('note$change.wav');
  }

  Expanded buildXyle({Color color, int playNum}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          audio(playNum);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              buildXyle(color: Colors.red, playNum: 1),
              buildXyle(color: Colors.purple, playNum: 2),
              buildXyle(color: Colors.amber, playNum: 3),
              buildXyle(color: Colors.blueGrey, playNum: 4),
              buildXyle(color: Colors.yellow, playNum: 5),
              buildXyle(color: Colors.blue, playNum: 6),
              buildXyle(color: Colors.teal, playNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
