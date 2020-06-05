

import 'package:drawerbloque2/vistas/home.dart';
import 'package:flutter/material.dart';


void main() {
  // final ManipulacionBD bd = ManipulacionBD(); // Instancia de la clase para la manipulación de datos

  // bd.cargarDatos(); // Inserto datos ficticios a la base de datos SQLite

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title: 'Drawer Demo',
        theme: ThemeData(

          primarySwatch: Colors.cyan,
        ),
        home:Home() ,
        routes: <String, WidgetBuilder>{
          //VuelosBD.routeName: (BuildContext context) => VuelosBD(),
          //VuelosWeb.routeName: (BuildContext context) => VuelosWeb(),
          //'/': (BuildContext context) => Home(),
        }

    );
  }
}
