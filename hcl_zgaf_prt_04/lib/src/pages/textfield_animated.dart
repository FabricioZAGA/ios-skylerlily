import 'dart:math';

import 'package:flutter/material.dart';

class TextFieldAnimatedPage extends StatefulWidget {
  @override
  _TextFieldAnimatedPageState createState() => _TextFieldAnimatedPageState();
}

class _TextFieldAnimatedPageState extends State<TextFieldAnimatedPage> {
  double _width = 50.0;
  double _height = 50.0;
  bool _figura = true;
  int _contador = 0;
  Color _color = Colors.pink[100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated Container')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _crearInput(),
            SizedBox(height: 40),
            AnimatedContainer(
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                color: _color,
                shape: _figura ? BoxShape.rectangle : BoxShape.circle,
              ),
              duration: Duration(milliseconds: 300),
              curve: Curves.linearToEaseOut,
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          counter: Text('Caracteres $_contador'),
          hintText: 'Canción',
          labelText: 'Jose Jose',
          helperText: 'Escribe una canción de José José',
          suffixIcon: Icon(Icons.music_note),
          icon: Icon(Icons.play_arrow_rounded, size: 40),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
        onChanged: (val) {
          setState(() {
            final random = Random();
            final _length = val.length;
            _contador = _length;
            if (_length < 10) {
            } else if (_length == 11) {
              if (_figura) {
                _figura = false;
              } else {
                _figura = true;
              }
              _width = 50;
              _height = 50;
            }
            _color = Colors.pink[(random.nextInt(9) * 100)];
            _width = ((_length) * 10).toDouble();
            _height = ((_length) * 10).toDouble();
          });
        });
  }
}
