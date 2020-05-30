import 'package:flutter/material.dart';

class IniciarSesion extends StatefulWidget {
  IniciarSesion({Key key}) : super(key: key);

  @override
  _IniciarSesionState createState() => _IniciarSesionState();
}

class _IniciarSesionState extends State<IniciarSesion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                
                CircleAvatar(backgroundColor: Colors.grey,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}