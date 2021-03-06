import 'package:flutter/material.dart';

class JoyStick extends StatefulWidget {
  @override
  createState() {
    return _JoyStickState();
  }
}

class _JoyStickState extends State<JoyStick> {
  final _estilo = new TextStyle(fontSize: 30);
  List<int> y = [1, 2, 0, -1, -2];
  List<int> x = [1, 2, 0, -1, -2];
  int iniY = 2;
  int iniX = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Aplicaccion Chida que Cuenta'),
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${y[iniY]}, ${x[iniX]}', style: _estilo),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Row(
            children: [
              FloatingActionButton(
                child: Text('Ar'),
                onPressed: () {
                  setState(() {
                    if (iniY == 4) {
                      iniY = -1;
                    }
                    iniY++;
                    y[iniY] = y[iniY];
                  });
                },
              ),
            ],
          ),
          Row(children: [
            FloatingActionButton(
              child: Text('I'),
              onPressed: () {
                setState(() {
                  iniX--;
                  if (iniX == 4) {
                    iniX = 0;
                  }

                  x[iniX] = x[iniX];
                });
              },
            ),
            FloatingActionButton(
              child: Text('D'),
              onPressed: () {
                if (iniX == 0) {
                  iniX = 4;
                }
                iniX++;
                setState(() {
                  x[iniX] = x[iniX];
                });
              },
            ),
          ]),
          Row(
            children: [
              FloatingActionButton(
                child: Text('Ab'),
                onPressed: () {
                  setState(() {
                    iniY--;
                    if (iniY == 0) {
                      iniY = 4;
                    }

                    y[iniY] = y[iniY];
                  });
                },
              ),
            ],
          )
        ]));
  }
}
