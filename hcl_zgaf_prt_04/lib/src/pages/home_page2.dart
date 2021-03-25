import 'package:flutter/material.dart';
import 'package:hcl_zgaf_prt_04/src/pages/home_page.dart';
import 'package:hcl_zgaf_prt_04/src/pages/homepage_alternativo.dart';
import 'package:hcl_zgaf_prt_04/src/providers/menu_provider.dart';
import 'package:hcl_zgaf_prt_04/src/utils/icono_string_util.dart';
import 'alert_page.dart';

class HomePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Componentes')),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData2(),
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
          subtitle: Text(opt['descripcion']),
          trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
          onTap: () {
            var route;
            switch (opt['ruta']) {
              case 'mac':
                route = MaterialPageRoute(
                    builder: (context) => AlertPage(
                          text: opt['descripcion'],
                        ));
                break;
              default:
                route = MaterialPageRoute(builder: (context) => HomePage());
                break;
            }
            Navigator.push(context, route);
          });
      opciones..add(widgetTemp)..add(Divider());
    });
    return opciones;
  }
}
