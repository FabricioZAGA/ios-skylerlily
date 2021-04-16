import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card Page')),
      body: ListView(
        children: <Widget>[
          _cardT1(),
          SizedBox(height: 20),
          _cardT2(),
          SizedBox(height: 20),
          _cardT1(),
          SizedBox(height: 20),
          _cardT2(),
          SizedBox(height: 20),
          _cardT3(
              title: 'Secretos',
              description:
                  'Secretos es el nombre del 19°. Lanzado por RCA Ariola el 11 de octubre de 1983',
              icon: Icons.play_circle_fill_outlined,
              image:
                  'https://images-na.ssl-images-amazon.com/images/I/81dQOdZEiPL._AC_SL1500_.jpg'),
          SizedBox(height: 20),
          _cardT3(
              title: 'Gracias',
              description:
                  'Gracias es el nombre del 17° Lanzado por RCA  Ariola a finales de 1981',
              icon: Icons.play_arrow_rounded,
              image:
                  'https://www.sanborns.com.mx/imagenes-sanborns-ii/1200/743215757023.jpg'),
        ],
      ),
    );
  }

  Widget _cardT1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.assistant_photo, color: Colors.cyanAccent),
            title: Text('Este es una tarjeta'),
            subtitle: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'),
          ),
          Row(
            children: <Widget>[
              FlatButton(
                child: Text('Aceptar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardT2() {
    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/9/91/Oahu_Landscape.jpg'),
            fadeInDuration: Duration(milliseconds: 500),
            height: 200,
            fit: BoxFit.fill,
          ),
          Container(
              padding: EdgeInsets.all(10),
              child: Text('Descripcion de la imagen en el contenedor'))
        ],
      ),
    );
    return Container(
        child: ClipRRect(borderRadius: BorderRadius.circular(20), child: card),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black38,
                  blurRadius: 10,
                  spreadRadius: 5,
                  offset: Offset(2.0, 10.0))
            ]));
  }

  Widget _cardT3({title, description, icon, image}) {
    return Card(
        elevation: 20,
        color: Colors.pink.withOpacity(0.3),
        child: Column(children: <Widget>[
          Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: ListTile(
                leading: Icon(icon, color: Colors.white, size: 50),
                title: Text(title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    )),
                subtitle:
                    Text(description, style: TextStyle(color: Colors.black)),
              )),
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              child: FadeInImage(
                placeholder: AssetImage('assets/jar-loading.gif'),
                image: NetworkImage(image),
                fadeInDuration: Duration(milliseconds: 500),
                height: 200,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ]));
  }
}
