import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'screens/take_picture_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  List<CameraDescription> cameras = [];
  try {
    cameras = await availableCameras();
  } catch (e) {
    // Camera not available on this platform
  }

  runApp(ResetPasswordApp(cameras: cameras));
}

class ResetPasswordApp extends StatelessWidget {
  const ResetPasswordApp({super.key, required this.cameras});

  final List<CameraDescription> cameras;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: cameras.isEmpty
          ? const NoCameraScreen()
          : TakePictureScreen(camera: cameras.first),
    );
  }
}

class NoCameraScreen extends StatelessWidget {
  const NoCameraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('No camera available on this device.'),
      ),
    );
  }
}
