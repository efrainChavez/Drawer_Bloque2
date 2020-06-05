import 'package:flutter/material.dart';
import 'package:drawerbloque2/modelo/bitacora.dart';
import 'package:drawerbloque2/modelo/elementoLista.dart';


class VuelosLista extends StatelessWidget {

  static String routeName = "/vuelosLista";

  const VuelosLista({Key key}): super(key: key);

  List<bitacora> contruirLista() {

    var vuelo1 = bitacora(fecha: '11/02/2019',dron: 'Actividad en casa a realizar ',detalles: 'corro');
    var vuelo2 = bitacora(fecha: '12/02/2019',dron: 'Actividad en casa a realizar',detalles: 'vuelo');
    var vuelo3 = bitacora(fecha: '13/02/2019',dron: 'Actividad en casa a realizar',detalles: 'me caigo');
    var vuelo4 = bitacora(fecha: '14/02/2019',dron: 'Actividad en casa a realizar',detalles: 'corro');
    var vuelo5 = bitacora(fecha: '15/02/2019',dron: 'Actividad en casa a realizar',detalles: 'vuelo');
    var vuelo6 = bitacora(fecha: '16/02/2019',dron: 'Actividad en casa a realizar',detalles: 'soñar');
    var vuelo7 = bitacora(fecha: '17/02/2019',dron: 'Actividad en casa a realizar',detalles: 'programar');
    var vuelo8 = bitacora(fecha: '15/02/2019',dron: 'Actividad en casa a realizar',detalles: 'limpiar');
    var vuelo9 = bitacora(fecha: '16/02/2019',dron: 'Actividad en casa a realizar',detalles: 'llorar');
    var vuelo10 = bitacora(fecha: '17/02/2019',dron: 'Actividad en casa a realizar',detalles: 'estar');
    var vuelo11 = bitacora(fecha: '11/02/2019',dron: 'Actividad en casa a realizar ',detalles: 'correr');
    var vuelo12 = bitacora(fecha: '12/02/2019',dron: 'Actividad en casa a realizar',detalles: 'volar');
    var vuelo13 = bitacora(fecha: '13/02/2019',dron: 'Actividad en casa a realizar',detalles: 'nadar');
    var vuelo14 = bitacora(fecha: '14/02/2019',dron: 'Actividad en casa a realizar',detalles: 'desayunar');
    var vuelo15 = bitacora(fecha: '15/02/2019',dron: 'Actividad en casa a realizar',detalles: 'limpiar');
    var vuelo16 = bitacora(fecha: '16/02/2019',dron: 'Actividad en casa a realizar',detalles: 'dormir');
    var vuelo17 = bitacora(fecha: '17/02/2019',dron: 'Actividad en casa a realizar',detalles: 'caminar');
    var vuelo18 = bitacora(fecha: '15/02/2019',dron: 'Actividad en casa a realizar',detalles: 'limpiar');
    var vuelo19 = bitacora(fecha: '16/02/2019',dron: 'Actividad en casa a realizar',detalles: 'lavar');
    var vuelo20 = bitacora(fecha: '17/02/2019',dron: 'Actividad en casa a realizar',detalles: 'nada');
    Map<int,bitacora> mapaVuelos={
      0: vuelo1,
      1: vuelo2,
      2: vuelo3,
      3: vuelo3,
      4: vuelo4,
      5: vuelo5,
      6: vuelo6,
      7: vuelo7,
      8: vuelo9,
      9: vuelo5,
      10: vuelo10,
      11: vuelo11,
      12: vuelo12,
      13: vuelo18,
      14: vuelo13,
      15: vuelo14,
      16: vuelo16,
      17: vuelo17,
      18: vuelo19,
      19: vuelo15,
      20: vuelo20,

    };
    //print(mapaVuelos[1].detalles);
    return List.generate(mapaVuelos.length, (i) {
      //print('$i');
      return bitacora(

          fecha: mapaVuelos[i].fecha,
          dron: mapaVuelos[i].dron,
          detalles: mapaVuelos[i].detalles
      );
    });
  }
  List<ListItem> bitacoraVuelos(){

    return contruirLista()
        .map((bitacora)=> ListItem(registro: bitacora))
        .toList();

  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ListView(
      children: bitacoraVuelos(),
    );


  }
}