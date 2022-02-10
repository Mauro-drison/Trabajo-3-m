//import 'package:flutter/material.dart';
//import 'package:myapp/home/widgets/AppArriba.dart';
//import 'package:myapp/home/widgets/AppBar.dart';
//import 'package:myapp/home/widgets/offertas.dart';
//import 'package:myapp/home/widgets/productos.dart';
//import 'package:myapp/pages/productosdos.dart';
//import 'package:myapp/home/widgets/textoproducto.dart';
//
////diseño
//class MyHomePagepri extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    //Se obtieje el alto y el ancho de la pantalla
//    double height = MediaQuery.of(context).size.height;
//    double width = MediaQuery.of(context).size.width;
//    //safeArea se adapta a los deiseños del mobil
//    return SafeArea(
//      child: Scaffold(
//          drawer: Drawer(
//            child: Barra_izquierda(),
//          ),
//          appBar: AppBar(
//            title: Text('APP'),
//            actions: <Widget>[
//              IconButton(
//                  icon: Icon(Icons.search),
//                  tooltip: "sirve para para buscar los elementos",
//                  onPressed: () {}),
//              IconButton(
//                icon: const Icon(Icons.shopping_cart),
//                onPressed: () {
//                  print("");
//                },
//              ),
//            ],
//          ),
//          body: Container(
//            height: height,
//            width: width,
//            child: ListView(
//              children: [
//                SizedBox(
//                  height: 5.0,
//                ),
//                AppArriba(),
//                //con esto damos un espacio en vertical
//                SizedBox(
//                  height: 20.0,
//                ),
//                Offertas(),
//                SizedBox(
//                  height: 4.0,
//                ),
//                Padding(
//                  padding: EdgeInsets.all(20.0),
//                  child: Text(
//                    "CATEGORIAS:",
//                    style: TextStyle(fontWeight: FontWeight.bold),
//                  ),
//                ),
//                Productos(),
//                SizedBox(
//                  height: 20.0,
//                ),
//                TextoProductos(),
//                ProductosDOS(),
//              ],
//            ),
//          )),
//    );
//  }
//}
//