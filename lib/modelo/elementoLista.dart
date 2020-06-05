
import 'package:drawerbloque2/modelo/bitacora.dart';
import 'package:drawerbloque2/vistas/vueloDetalles.dart';
import 'package:flutter/material.dart';


class ListItem extends StatelessWidget{
  // final Dog registro;
  final bitacora registro;

  ListItem({Key key,this.registro}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(child: Text(registro.detalles.substring(0, 1)),),
        title: Text(registro.detalles),
        subtitle: Text("Fecha: " + registro.fecha.toString()+"\nDetalle: "+registro.detalles.toString()),


        onTap: (){

          Navigator.push(context,
            MaterialPageRoute(builder: (context) => VueloDetalles(vuelo:registro)),);

        },

      ),
    );
  }

}
