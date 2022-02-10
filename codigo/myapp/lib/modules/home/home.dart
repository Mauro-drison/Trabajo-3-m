import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/modules/home/AppArriba.dart';
//import 'package:myapp/pages/productos_tabs.dart';
//import 'package:myapp/pages/productosdos.dart';

import 'package:myapp/modules/home/controller.dart';
import 'package:myapp/modules/home/offertas.dart';
import 'package:myapp/modules/home/textoproducto.dart';
import 'package:myapp/modules/home/widgets/AppBar.dart';
import 'package:myapp/modules/home/widgets/enviartodoslosproductos.dart';
import 'package:myapp/modules/home/widgets/productos.dart';

import 'package:myapp/routes/app_pages.dart';

class Home extends GetView<Controller> {
  //eso nos evita lineas de comandos
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Barra_izquierda(),
        ),
        appBar: AppBar(
          title: Text('APP 2.0'),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: IconButton(
                  icon: Icon(Icons.search),
                  tooltip: "sirve para para buscar los elementos",
                  onPressed: () {}),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  Get.toNamed(AppRoutes.CARRITO_COMPRAS);
                },
              ),
            ),
          ],
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              SizedBox(
                height: 5.0,
              ),
              AppArriba(),
              //con esto damos un espacio en vertical
              SizedBox(
                height: 20.0,
              ),
              Offertas(),
              SizedBox(
                height: 4.0,
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "CATEGORIAS:",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Productos(),
              SizedBox(
                height: 20.0,
              ),
              TextoProductos(),
              //ProductosTabs(),
              EnviarTodoLosProductos()
            ],
          ),
        ));
  }
}
