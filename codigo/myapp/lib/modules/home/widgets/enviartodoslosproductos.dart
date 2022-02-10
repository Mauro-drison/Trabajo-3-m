import 'package:flutter/material.dart';
import 'package:myapp/modules/home/todolosproductos.dart';

class EnviarTodoLosProductos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        //el listwiev lo tienen de forma vertical con esto lo cambiamos a orizontal

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TodoLosProductos("producto1", "40", "assets/images/imagen2.jpg"),
              TodoLosProductos("producto2", "50", "assets/images/imagen3.jpeg"),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TodoLosProductos("producto2", "50", "assets/images/imagen4.jpeg"),
              TodoLosProductos("producto2", "50", "assets/images/imagen3.jpeg"),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TodoLosProductos("producto2", "50", "assets/images/imagen5.jpeg"),
              TodoLosProductos("producto2", "50", "assets/images/imagen3.jpeg"),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TodoLosProductos("producto2", "50", "assets/images/imagen5.jpeg"),
              TodoLosProductos("producto2", "50", "assets/images/imagen3.jpeg"),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TodoLosProductos("producto2", "50", "assets/images/imagen5.jpeg"),
              TodoLosProductos("producto2", "50", "assets/images/imagen3.jpeg"),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
