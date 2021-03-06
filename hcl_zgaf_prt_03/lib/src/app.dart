import 'package:flutter/material.dart';
import './pages/joystick.dart';

class MyApp extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      home: Center(
        child: JoyStick(),
      ),
    );
  }
}
