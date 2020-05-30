import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
//import 'package:beta/pantallas/mensajeria.dart';
import 'package:beta/pantallas/notificaciones.dart';
import 'package:beta/pantallas/perfil.dart';

class Page {
  Widget body;
  IconData icon;
  int index;

  Page({this.body, this.index, this.icon,});
}
class Inicio extends StatefulWidget {
  Inicio({Key key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  int currentIndex = 0;
  int _currentPage = 0;
  List<Page> pages;
  void changePage (int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  void initState() { 
    super.initState();
    pages = [
      Page(
        body: principal(),
        icon: MdiIcons.storefrontOutline,
        index: 0,
      ),
      Page(
        body: mensajes(),
        icon: MdiIcons.messageTextOutline,
        index: 1,
      ),
      Page(
        body: Notificaciones(),
        icon: Icons.notifications_none,
        index: 2,
      ),
      Page(
        body: Perfil(),
        icon: Icons.person_pin,
        index: 3,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: principal(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: pages.map<Widget>((page){
            return IconButton(
              icon: Icon(
                page.icon,
                color: _currentPage == page.index? Colors.indigo : Colors.grey,
              ),
              onPressed: () {
                changePage(page.index);
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}


  Widget principal() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5.0),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 3.0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffeceff1),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: <Widget>[
                  Icon (Icons.search, color: Color(0xff78909C),),
                  SizedBox(width: 15.0,),
                  Text('Buscar',
                    style: TextStyle(
                      color: Color(0xff78909C),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 12,),
            SingleChildScrollView(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Recientes',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Mostrar mas', 
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              //Estaran los usuarios que recien haya visto sus perfiles
            ),
            SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Descubrir',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.filter_list, color: Colors.grey,
                ),
              ],
            ),
          ],
        ),
      ),
    );
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