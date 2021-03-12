import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplicacion Chida'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Input Numero 1',
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
              padding: const EdgeInsets.only(left: 25, right: 25, top: 12),
            ),
            Padding(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Input Numero 2',
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
              padding: const EdgeInsets.only(left: 25, right: 25, top: 12),
            ),
            const SizedBox(height: 30),
            FloatingActionButton(child: Text('Ab'), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
