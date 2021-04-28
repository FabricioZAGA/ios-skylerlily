import 'package:flutter/material.dart';
import 'package:hcl_zgaf_prt_04/src/pages/alert_page.dart';
import 'package:hcl_zgaf_prt_04/src/pages/avatar_page.dart';
import 'package:hcl_zgaf_prt_04/src/pages/card_page.dart';
import 'package:hcl_zgaf_prt_04/src/pages/home_page.dart';
import 'package:hcl_zgaf_prt_04/src/pages/animated_container.dart';
import 'package:hcl_zgaf_prt_04/src/pages/input_page.dart';
import 'package:hcl_zgaf_prt_04/src/pages/textfield_animated.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'card': (BuildContext context) => CardPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    'inputs': (BuildContext context) => InputPage(),
    'textFieldAnimated': (BuildContext context) => TextFieldAnimatedPage()
  };
}
