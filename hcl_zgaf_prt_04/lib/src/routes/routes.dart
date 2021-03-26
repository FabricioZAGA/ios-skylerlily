import 'package:flutter/material.dart';
import 'package:hcl_zgaf_prt_04/src/pages/alert_page.dart';
import 'package:hcl_zgaf_prt_04/src/pages/avatar_page.dart';
import 'package:hcl_zgaf_prt_04/src/pages/card_page.dart';
import 'package:hcl_zgaf_prt_04/src/pages/home_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'card': (BuildContext context) => CardPage(),
    'avatar': (BuildContext context) => AvatarPage()
  };
}
