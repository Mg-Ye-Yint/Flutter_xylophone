import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

void playsound(int soundnote) {
  final player = AudioPlayer();
  player.play(AssetSource('note$soundnote.wav'));
}

Expanded buildkey(
    {required Color buttoncolor, required int soundnumber, required}) {
  return Expanded(
    child: TextButton(
      onPressed: () {
        playsound(soundnumber);
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(buttoncolor),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                0.0), // Set border radius to 0 for a rectangular shape
          ),
        ),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.all(16.0), // Adjust the padding as needed
        ),
      ),
      child: Text(''),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(buttoncolor: Colors.red, soundnumber: 1),
              buildkey(buttoncolor: Colors.blueAccent, soundnumber: 2),
              buildkey(buttoncolor: Colors.green, soundnumber: 3),
              buildkey(buttoncolor: Colors.yellow, soundnumber: 4),
              buildkey(buttoncolor: Colors.pinkAccent, soundnumber: 5),
              buildkey(buttoncolor: Colors.cyan, soundnumber: 6),
              buildkey(buttoncolor: Colors.orange, soundnumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
