import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Altertpage')),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
              child: Text('Alterta'),
              onPressed: () => _mostrarAlterta(context),
              style: ElevatedButton.styleFrom(
                  primary: Colors.black45, shape: StadiumBorder())),
          ElevatedButton(
              child: Text('Navegar a avatar'),
              onPressed: () => _customizedAlert(context),
              style: ElevatedButton.styleFrom(
                  primary: Colors.black45, shape: StadiumBorder())),
        ],
      )),
    );
  }

  _mostrarAlterta(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            title: Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Contenido de la alerta'),
                FlutterLogo(
                  size: 100,
                ),
              ],
            ),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
                onPressed: () => Navigator.of(context).pop(),
              ),
              TextButton(
                child: Text('Cancel'),
                onPressed: () => Navigator.of(context).pop(),
              )
            ],
          );
        });
  }

  _customizedAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue.withOpacity(0.3),
              ),
              child: AlertDialog(
                backgroundColor: Colors.grey.shade800,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                title: Text('José José te observa',
                    style: TextStyle(color: Colors.grey.shade100)),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 10.0,
                          ),
                        ],
                      ),
                      child: FadeInImage(
                        placeholder: AssetImage('assets/jar-loading.gif'),
                        image: NetworkImage(
                            'https://imagenes.canalrcn.com/lomaslike/jose_jose.png'),
                        fadeInDuration: Duration(milliseconds: 500),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                actions: <Widget>[
                  TextButton(
                    child: Text('Cancelar',
                        style: TextStyle(color: Colors.grey.shade500)),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  TextButton(
                    child: Text('Navegar',
                        style: TextStyle(color: Colors.grey.shade200)),
                    onPressed: () => Navigator.pushNamed(context, 'avatar'),
                  )
                ],
              ));
        });
  }
}
