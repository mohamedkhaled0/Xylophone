import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void BlaySounds(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded keybuilt(int num, Color ColorName) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          BlaySounds(num);
        },
        style: ElevatedButton.styleFrom(
          primary: ColorName,
        ),
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                keybuilt(1, Colors.red),
                keybuilt(2, Colors.orange),
                keybuilt(3, Colors.yellow),
                keybuilt(4, Colors.green),
                keybuilt(5, Colors.blueGrey),
                keybuilt(6, Colors.lightBlue),
                keybuilt(7, Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
