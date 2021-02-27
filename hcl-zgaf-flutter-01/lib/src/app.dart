import 'package:hcl-zgaf-flutter-01/src/pages/mainPage.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) { //context return widget
    return MaterialApp(
      home: Center(
        child: HomePage(),
      ),
    );
  }
}