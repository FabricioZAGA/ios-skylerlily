import 'package:flutter/material.dart';

class ConteoPage extends StatefulPage {
  @override
  createState() {
    return _ConteoPageState();
  }
}

class _ConteoPageState extends State<ConteoPage> {
  final _estilo = TextStyle(fontSize: 50);
  int _conteo = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aqui va el titulo'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('clicks: $_conteo', style: _estilo),
          Text('texto2', style: _estilo)
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _conteo++;
        },
      ),
    );
  }
}
