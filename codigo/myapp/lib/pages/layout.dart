import 'package:flutter/material.dart';
import 'package:myapp/pages/AppArriba.dart';
import 'package:myapp/pages/AppBar.dart';
import 'package:myapp/pages/offertas.dart';
import 'package:myapp/pages/productos.dart';
import 'package:myapp/pages/productosdos.dart';
import 'package:myapp/pages/textoproducto.dart';

//diseño
class MyHomePagepri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Se obtieje el alto y el ancho de la pantalla
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    //safeArea se adapta a los deiseños del mobil
    return SafeArea(
      child: Scaffold(
          drawer: Drawer(
            child: Barra_izquierda(),
          ),
          appBar: AppBar(
            title: Text('MI APP MAURO'),
          ),
          body: Container(
            height: height,
            width: width,
            child: ListView(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                AppArriba(),
                //con esto damos un espacio en vertical
                SizedBox(
                  height: 30.0,
                ),
                Offertas(),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "PRODUCTOS",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Productos(),
                SizedBox(
                  height: 20.0,
                ),
                TextoProductos(),
                ProductosDOS(),
              ],
            ),
          )
        ),
    );
  }
}
