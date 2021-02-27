import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NavBar'),
      ),
      body: Center(
        child: Column(
          children: <Widget> [

            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0, bottom: 50.0),
              child: Text('Pos aquí andamos en Flutter jejeje'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 15.0),
              child: TextField(
                decoration: InputDecoration (
                  labelText: 'Número 1',
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter> [
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 15.0),
              child: TextField(
                decoration: InputDecoration (
                  labelText: 'Número 2',
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter> [
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
            const SizedBox(height: 50),
            RaisedButton(
              onPressed: () {},
              textColor: Colors.white,
              padding: const EdgeInsets.all(0.0),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFFFF14BD),
                      Color(0xFFFF73D8),
                      Color(0xFFFFABE8),
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(10.0),
                child:
                const Text('First Button', style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}