import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10),
            child:
                CircleAvatar(child: Text('JJ'), backgroundColor: Colors.pink),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    width: 3,
                    color: Colors.green,
                    style: BorderStyle.solid,
                  ),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black38,
                        blurRadius: 10,
                        spreadRadius: 5,
                        offset: Offset(2.0, 10.0))
                  ]),
              child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://st1.uvnimg.com/d6/b7/284665fb480192a661b756b20e86/josejose1.png'),
                  radius: 25)),
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
              'https://imagenes.canalrcn.com/lomaslike/jose_jose.png'),
          fadeInDuration: Duration(milliseconds: 500),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
