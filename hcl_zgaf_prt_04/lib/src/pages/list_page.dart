import 'package:flutter/material.dart';
import 'dart:async';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<int> _ListaNumeros = new List();
  int _ultimoItem = 10;
  int _contador = 0;
  String _efecto = "";
  bool _isLoading = false;
  ScrollController _scrollController = new ScrollController();

  void initState() {
    _agregar10();
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        fetchData();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Listas')),
      body: Stack(
        children: <Widget>[
          _crearLista(),
          _crearLoading(),
        ],
      ),
    );
  }

  Widget _crearLista() {
    return ListView.builder(
      controller: _scrollController,
      itemCount: _ListaNumeros.length,
      itemBuilder: (BuildContext context, int index) {
        final imagen = _ListaNumeros[index];
        final efecto = _efecto;
        final url = 'https://picsum.photos/id/$imagen/400/300$efecto';
        try {
          return FadeInImage(
            image: NetworkImage(
              url,
            ),
            placeholder: AssetImage('assets/jar-loading.gif'),
          );
        } catch (e) {
          return FadeInImage(
            image: NetworkImage(
              'https://picsum.photos/400/300$efecto',
            ),
            placeholder: AssetImage('assets/jar-loading.gif'),
          );
        }
      },
    );
  }

  Widget _crearLoading() {
    if (_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[CircularProgressIndicator()],
          )
        ],
      );
    }
    return Container();
  }

  Future<Null> fetchData() async {
    _isLoading = true;
    setState(() {
      final duracion = new Duration(seconds: 3);
      return new Timer(duracion, responseHTTP);
    });
  }

  void responseHTTP() {
    _isLoading = false;
    _scrollController.animateTo(
      _scrollController.position.pixels + 150,
      curve: Curves.fastOutSlowIn,
      duration: Duration(milliseconds: 500),
    );
    _agregar10();
  }

  void _agregar10() {
    for (var i = 0; i < 10; i++) {
      _ListaNumeros.add(_ultimoItem++);
      setState(() {});
    }
    _contador++;
    switch (_contador) {
      case 1:
        _efecto = '';
        break;
      case 2:
        _efecto = '?grayscale';
        break;
      case 3:
        _efecto = '?blur';
        _contador = 0;
        break;
      default:
    }
    setState(() {});
  }
}
