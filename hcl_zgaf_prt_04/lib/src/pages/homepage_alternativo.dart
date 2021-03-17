import 'package:flutter/material.dart';

//Lilian Hernández Contreras
//Fabricio Zacarías Guzmán

class HomePageAlternativo extends StatelessWidget {
  final opciones = [
    {
      "title": "Relojito",
      "description": "Este es un relojito",
      "leading": Icons.access_alarm_outlined,
      "trailing": Icons.keyboard_arrow_right
    },
    {
      "title": "Persona",
      "description": "Persona chida",
      "leading": Icons.account_box_rounded,
      "trailing": Icons.keyboard_arrow_left
    },
    {
      "title": "Guardar",
      "description": "Guardar todo",
      "leading": Icons.save,
      "trailing": Icons.keyboard_arrow_down
    },
    {
      "title": "Comentarios",
      "description": "Estos son comentarios comentados",
      "leading": Icons.add_comment,
      "trailing": Icons.keyboard_arrow_up
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista Chida'), backgroundColor: Colors.pink),
      body: ListView(children: _crearItemsCorto()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();
    for (var opt in opciones) {
      final tempWidget = ListTile(title: Text(opt['title']));
      // lista.add(tempWidget);
      // lista.add(Divider());
      lista..add(tempWidget)..add(Divider());
    }
    return lista;
  }

  List<Widget> _crearItemsCorto() {
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(
              (item['title']),
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                  fontSize: 25.0),
            ),
            subtitle: Text(item['description']),
            leading: Icon(item['leading'], size: 35.0),
            trailing: Icon(item['trailing']),
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
