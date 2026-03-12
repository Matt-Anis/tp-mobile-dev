import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Images gallery',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(title: 'Images Gallery'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _deg = 0;
  final _image = Image.asset('assets/images/image.png');

  void _rotateImage() {
    setState(() {
      _deg += 45;
      if (_deg == 360) {
        _deg = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final angle = _deg * pi / 180;
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Images : \n\n\n\n'),
            Transform.rotate(angle: angle, child: _image),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _rotateImage,
        tooltip: 'Rotate',
        child: const Text('Rotate'),
      ),
    );
  }
}
