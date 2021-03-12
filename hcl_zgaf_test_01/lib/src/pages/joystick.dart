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
        msg: 'No se puede ir más allá',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.black,
        textColor: Colors.white);
    iniX = 0;
    iniY = 0;
  }

  final _estilo = new TextStyle(fontSize: 30);
  int iniX = 0;
  int iniY = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplicaccion Chida que se mueve'),
        centerTitle: true,
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(4),
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        crossAxisCount: 3,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Text(
                iniX == -1 && iniY == 1 ? 'x' : '',
                style: TextStyle(fontSize: 70, color: Colors.white),
              ),
            ),
            color: Colors.blueGrey,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Text(
                iniX == 0 && iniY == 1 ? 'x' : '',
                style: TextStyle(fontSize: 70, color: Colors.white),
              ),
            ),
            color: Colors.lime,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Text(
                iniX == 1 && iniY == 1 ? 'x' : '',
                style: TextStyle(fontSize: 70, color: Colors.white),
              ),
            ),
            color: Colors.teal,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Text(
                iniX == -1 && iniY == 0 ? 'x' : '',
                style: TextStyle(fontSize: 70, color: Colors.white),
              ),
            ),
            color: Colors.cyan,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Text(
                iniX == 0 && iniY == 0 ? 'x' : '',
                style: TextStyle(fontSize: 70, color: Colors.white),
              ),
            ),
            color: Colors.purpleAccent,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Text(
                iniX == 1 && iniY == 0 ? 'x' : '',
                style: TextStyle(fontSize: 70, color: Colors.white),
              ),
            ),
            color: Colors.pink,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Text(
                iniX == -1 && iniY == -1 ? 'x' : '',
                style: TextStyle(fontSize: 70, color: Colors.white),
              ),
            ),
            color: Colors.purple,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Text(
                iniX == 0 && iniY == -1 ? 'x' : '',
                style: TextStyle(fontSize: 70, color: Colors.white),
              ),
            ),
            color: Colors.blue,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Text(
                iniX == 1 && iniY == -1 ? 'x' : '',
                style: TextStyle(fontSize: 70, color: Colors.white),
              ),
            ),
            color: Colors.amber,
          ),
          Container(
            padding: const EdgeInsets.all(8),
          ),
          FlatButton(
              onPressed: () {
                setState(() {
                  if (iniY == 1) {
                    showToast();
                  } else {
                    iniY++;
                  }
                });
              },
              child: Image.asset('assets/up.png')),
          Container(
            padding: const EdgeInsets.all(8),
          ),
          FlatButton(
              onPressed: () {
                setState(() {
                  if (iniX == -1) {
                    showToast();
                  } else {
                    iniX--;
                  }
                });
              },
              child: Image.asset('assets/left.png')),
          Container(
            padding: const EdgeInsets.all(8),
          ),
          FlatButton(
              onPressed: () {
                setState(() {
                  if (iniX == 1) {
                    showToast();
                  } else {
                    iniX++;
                  }
                });
              },
              child: Image.asset('assets/right.png')),
          Container(
            padding: const EdgeInsets.all(8),
          ),
          FlatButton(
              onPressed: () {
                setState(() {
                  if (iniY == -1) {
                    showToast();
                  } else {
                    iniY--;
                  }
                });
              },
              child: Image.asset('assets/down.png')),
        ],
      ),
    );
  }
}
