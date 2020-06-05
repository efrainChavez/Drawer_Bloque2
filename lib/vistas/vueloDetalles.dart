
import 'package:flutter/material.dart';
import 'package:drawerbloque2/modelo/bitacora.dart';

class VueloDetalles extends StatelessWidget {
  final bitacora vuelo;

  VueloDetalles({this.vuelo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Actividades descripcion"),
      ),
      body: Center(
          child: Column(

            children: <Widget>[
              Container(
                  margin: const EdgeInsets.all(15.0),
                  //color: Colors.amber[600],
                  child: Text(vuelo.dron, style: TextStyle(color: Colors.black, fontSize: 30.0),)
              ),
              Container(
                  margin: const EdgeInsets.all(15.0),
                  //color: Colors.amber[600],
                  child: Text('Fecha: ' + vuelo.fecha,style: TextStyle(color: Colors.black,fontSize: 30.0), )
              ),
              Container(
                  margin: const EdgeInsets.all(20.0),
                  color: Colors.amber[600],
                  child: Text('Detalles de actividad: ' + vuelo.detalles,style: TextStyle(color: Colors.black, fontSize: 30.0)
              ),)
              /*RaisedButton(
                onPressed: () {
                  // Navigate back to first route when tapped.
                  Navigator.pop(context);
                },
                child: Text('Regreso'),
              ),*/
            ],

          )


      ),
    );
  }
}