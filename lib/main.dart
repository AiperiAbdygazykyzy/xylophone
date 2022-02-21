import 'package:flutter/material.dart';
import 'package:tortunchu_tapshyrma_4/xylophone_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xylophone',
      home: XylophonePage(),
    );
  }
}
