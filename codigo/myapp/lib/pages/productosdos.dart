import 'package:flutter/material.dart';
import 'package:myapp/pages/productos_tabs.dart';

class ProductosDOS extends StatelessWidget {
  const ProductosDOS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //utiliza la medida del ancho
    double width = MediaQuery.of(context).size.width;
    // contenedor donde se va a dibujar lo que se llame
    return Container(
      //alto ancho
      height: 200.0,
      width: width,
      child: ListView(
        //orizontal
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: ProductosTabs(
                "https://www.cinemascomics.com/wp-content/uploads/2011/05/piratas-del-caribe-1-e1487593366311.jpg?width=1200&enable=upscale",
                "pirata"),
          ),
          ProductosTabs(
              "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/jack-sparrow-1533637105.jpg",
              "piratas2"),
          ProductosTabs(
              "https://www.hola.com/imagenes/viajes/2012061158993/piratas-caribe-america-pelicula/0-206-477/a_752_14454_R-a.jpg",
              "piratas 3"),
          ProductosTabs(
              "https://cdn.superaficionados.com/imagenes/4-piratas-del-caribe-navegando-en-aguas-misteriosas-cke.jpg",
              "piratas 3343")
        ],
      ),
    );
  }
}
