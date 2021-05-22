import 'dart:async';
import 'package:hcl_zgaf_prt_bloc/src/bloc/validators.dart';

class LoginBloc with Validators {
  final _emailController = new StreamController<String>.broadcast();
  final _passwordController = new StreamController<String>.broadcast();

  Stream<String> get emailStream =>
      _emailController.stream.transform(validarEmail);
  Function(String) get changeEmail => _emailController.sink.add;
  Stream<String> get passStream =>
      _passwordController.stream.transform(validarPass);
  Function(String) get changePass => _passwordController.sink.add;

  dispose() {
    _emailController?.close();
    _passwordController?.close();
  }
}
