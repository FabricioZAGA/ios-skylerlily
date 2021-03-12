import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class JoyStick extends StatefulWidget {
  @override
  createState() {
    return _JoyStickState();
  }
}

class _JoyStickState extends State<JoyStick> {
  void showToast() {
    Fluttertoast.showToast(
        msg: 'Out of Boundaries',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.black,
        textColor: Colors.white);
  }

  final _estilo = new TextStyle(fontSize: 30);
  List<int> y = [-2, -1, 0, 1, 2];
  List<int> x = [-2, -1, 0, 1, 2];
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
            Text('Y: ${y[iniY]}, X: ${x[iniX]}', style: _estilo),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        Row(
          children: [
            FloatingActionButton(
              child: Text('Ar'),
              onPressed: () {
                setState(() {
                  if (iniY == 4) {
                    showToast();
                    iniY = 0;
                  } else {
                    iniY++;
                  }
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
                if (iniX == 0) {
                  showToast();
                  iniX = 4;
                } else {
                  iniX--;
                }
                y[iniX] = y[iniX];
              });
            },
          ),
          FloatingActionButton(
            child: Text('D'),
            onPressed: () {
              setState(() {
                if (iniX == 4) {
                  showToast();
                  iniX = 0;
                } else {
                  iniX++;
                }
                y[iniX] = y[iniX];
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
                  if (iniY == 0) {
                    showToast();
                    iniY = 4;
                  } else {
                    iniY--;
                  }
                  y[iniY] = y[iniY];
                });
              },
            ),
          ],
        )
      ]),
    );
  }
}
