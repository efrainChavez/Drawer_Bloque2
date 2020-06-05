
class bitacora{
  final String fecha;
  final String dron;
  final String detalles;

  bitacora({this.fecha,this.dron, this.detalles});


  /* Se crea el metodo toMap para transformar los datos de un formato de objeto
  a mapa. Este es necesario para introducir registros a la base de datos.
   */
  Map<String, dynamic> toMap() {
    return {
      'fecha': fecha,
      'dron': dron,
      'detalles': detalles,
    };
  }

  factory bitacora.fromJson(Map<String, dynamic> json) {
    return bitacora(
      fecha: json['fecha'],
      dron: json['dron'],
      detalles: json['detalles'],

    );
  }


}
