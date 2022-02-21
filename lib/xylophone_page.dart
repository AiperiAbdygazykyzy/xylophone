import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XylophonePage extends StatefulWidget {
  const XylophonePage({Key key}) : super(key: key);

  @override
  _XylophonePageState createState() => _XylophonePageState();
}

class _XylophonePageState extends State<XylophonePage> {
  AudioCache player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            _buildContainer(color: Colors.redAccent, noteNumber: '1'),
            _buildContainer(color: Colors.orangeAccent, noteNumber: '2'),
            _buildContainer(color: Colors.yellow[400], noteNumber: '3'),
            _buildContainer(color: Colors.lightGreen[600], noteNumber: '4'),
            _buildContainer(color: Colors.cyan[900], noteNumber: '5'),
            _buildContainer(color: Colors.blue[300], noteNumber: '6'),
            _buildContainer(color: Colors.purple, noteNumber: '7'),
          ],
        ),
      ),
    );
  }

  Expanded _buildContainer(
      {@required Color color, @required String noteNumber}) {
    return Expanded(
      child: Container(
        color: color,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: Colors.white12,
            onTap: () {
              player.play('notes/note$noteNumber.mp3');
            },
            child: Container(),
          ),
        ),
      ),
    );
  }
}
