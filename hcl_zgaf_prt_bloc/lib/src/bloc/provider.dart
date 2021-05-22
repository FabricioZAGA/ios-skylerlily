import 'package:flutter/cupertino.dart';
import 'package:hcl_zgaf_prt_bloc/src/bloc/login_bloc.dart';

class Provider extends InheritedWidget {
  final loginBloc = LoginBloc();

  Provider({Key key, Widget child}) : super(key: key, child: child);

  static LoginBloc of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Provider>().loginBloc;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
