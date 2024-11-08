import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screens/CameraScreen.dart';
import 'package:flutter_application_2/Screens/LoginScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras  = await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        fontFamily: "OpenSans",
        primaryColor: Color(0xFF075E54),
      ),
      home: LoginScreen(),
    );
  }
}
