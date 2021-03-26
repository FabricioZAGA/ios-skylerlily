import 'package:flutter/material.dart';
import 'package:hcl_zgaf_prt_04/src/pages/alert_page.dart';
import 'package:hcl_zgaf_prt_04/src/routes/routes.dart';
import './src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: getApplicationRoutes(),
        onGenerateRoute: (RouteSettings settings) {
          print('Ruta ${settings.name}');
          return MaterialPageRoute(
              builder: (BuildContext context) => AlertPage());
        });
  }
}
