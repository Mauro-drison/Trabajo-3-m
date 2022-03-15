import 'package:flutter/material.dart';
import 'package:myapp/modules/home/listaProductos.dart';

class Filtro_Productos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 180.0,
      width: width,
      child: ListView(
        //el listwiev lo tienen de forma vertical con esto lo cambiamos a orizontal
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child:
                ListaProductos("producto1", "40", "assets/images/imagen2.jpg"),
          ),
          ListaProductos("producto2", "50", "assets/images/imagen3.jpeg"),
          ListaProductos("producto2", "50", "assets/images/imagen4.jpeg"),
          ListaProductos("producto2", "50", "assets/images/imagen5.jpeg"),
        ],
      ),
    );
  }
}
