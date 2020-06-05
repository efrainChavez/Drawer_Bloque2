import 'package:drawerbloque2/vistas/vuelosLista.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static BuildContext contexto;

  const Home({Key key}) : super(key: key);

  ListTile getListItem(Icon icono, String opcion, String route) {
    return ListTile(
      leading: icono,
      title: Text(opcion),
      onTap: () {
        Navigator.pushNamed(contexto, route);
      },
    );
  }

  ListView getMenu(BuildContext context) {
    return ListView(
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.cyan,
          ),
          child: Stack(children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/imagenes/efra.jpg"),

                radius: 40.0,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Efrain Chavez',
                style: TextStyle(color: Colors.white, fontSize: 25.0),
              ),
            ),
            Align(
              alignment: Alignment.centerRight + Alignment(.1, .3),
              child: Text(
                'efrainchavez820@gmail.com',
                style: TextStyle(
                  color: Colors.white, fontSize: 15.0
                ),
              ),
            ),
          ]
          ),

        ),
        getListItem(Icon(Icons.access_time), "Actividades", "/"),
        getListItem(Icon(Icons.directions_run), "Correr", "/vuelosBD"),
        getListItem(Icon(Icons.shopping_cart), "Shopping", "/vuelosWeb"),
      ],
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    contexto = context;

    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina principal"),
      ),
      drawer: Drawer(
        child: getMenu(context),
      ),
      body: VuelosLista(),
    );
  }
}
