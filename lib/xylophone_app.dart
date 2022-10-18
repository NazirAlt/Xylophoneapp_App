import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Xylophone extends StatefulWidget {
  const Xylophone({Key key}) : super(key: key);

  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  AudioCache player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff283136),
        title: const Text('Flutter Xylophone'),
      ),
      body: Center(
        child: Column(children: [
          _buildContainer(color: const Color(0xffEF443A), notaNumber: '1'),
          _buildContainer(color: const Color(0xffF99700), notaNumber: '2'),
          _buildContainer(color: const Color(0xffFFE93B), notaNumber: '3'),
          _buildContainer(color: const Color(0xff4CB050), notaNumber: '4'),
          _buildContainer(color: const Color(0xff2E968C), notaNumber: '5'),
          _buildContainer(color: const Color(0xff2996F5), notaNumber: '6'),
          _buildContainer(color: const Color(0xff9B28B1), notaNumber: '7'),
        ]),
      ),
    );
  }

  Expanded _buildContainer({Color color, String notaNumber}) {
    return Expanded(
      child: Material(
        color: color,
        child: InkWell(
          splashColor: Colors.grey,
          onTap: () {
            player.play('noses/note$notaNumber.wav');
          },
        ),
      ),
    );
  }
}
