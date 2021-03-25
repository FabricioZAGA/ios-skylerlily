import 'package:flutter/material.dart';
import 'package:hcl_zgaf_prt_04/src/pages/homepage_alternativo.dart';
import 'package:hcl_zgaf_prt_04/src/providers/menu_provider.dart';
import 'package:hcl_zgaf_prt_04/src/utils/icono_string_util.dart';
import './home_page2.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Componentes')),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];
    data.forEach((opt) {
      final widgetTemp = ListTile(
          title: Text(opt['texto']),
          leading: getIcon(opt['icon']),
          trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
          onTap: () {
            var route;
            switch (opt['ruta']) {
              case 'alert':
                route = MaterialPageRoute(builder: (context) => HomePage2());
                break;
              default:
                route = MaterialPageRoute(
                    builder: (context) => HomePageAlternativo());
                break;
            }

            Navigator.push(context, route);
          });
      opciones..add(widgetTemp)..add(Divider());
    });
    return opciones;
  }
}
