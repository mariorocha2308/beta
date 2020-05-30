import 'package:flutter/material.dart';

class Mensajeria extends StatefulWidget {
  Mensajeria({Key key}) : super(key: key);

  @override
  _MensajeriaState createState() => _MensajeriaState();
}

class _MensajeriaState extends State<Mensajeria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mensajes(),
    );
  }
}

  Widget mensajes() {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text('Recientes',
            style: TextStyle(
              fontSize: 25,
              fontFamily: 'Poppins',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }