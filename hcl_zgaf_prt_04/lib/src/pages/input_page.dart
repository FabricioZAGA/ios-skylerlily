import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _cancion = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs Personalizados'),
      ),
      body: ListView(
        padding: EdgeInsets.all(25.0),
        children: <Widget>[
          _crearInput(),
          SizedBox(height: 20),
          Divider(),
          _repintar(),
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          counter: Text('Canciones'),
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
            _cancion = val;
          });
        });
  }

  Widget _repintar() {
    return ListTile(
      title: Text('Canción de José José: $_cancion'),
    );
  }
}
