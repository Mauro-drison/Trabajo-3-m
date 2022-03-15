import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/routes/app_pages.dart';

class Barra_izquierda extends StatelessWidget {
  const Barra_izquierda({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      // Important: Remove any padding from the ListView.
      //adding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Color.fromRGBO(24, 24, 24, 1),
          ),
          child: Column(
            children: [
              IconButton(
                color: Colors.white,
                icon: Icon(
                  Icons.account_circle_rounded,
                ),
                onPressed: () {
                  Get.toNamed(AppRoutes.REGISTRARSE);
                },
                iconSize: 70.0,
              ),
            ],
          ),
        ),
        ListTile(
          leading: Icon(Icons.add_shopping_cart_outlined),
          title: const Text(
            'MIS COMPRAS EN PROCESO',
            style: TextStyle(),
          ),
          onTap: () {
            Get.toNamed(AppRoutes.COMPRAS_TIEMPO);
          },
        ),
        ListTile(
          leading: Icon(Icons.local_attraction_outlined),
          title: const Text('OFERTAS'),
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
        ListTile(
          leading: Icon(Icons.add),
          title: const Text('AGREGAR PRODUCTOS'),
          onTap: () {
            Get.toNamed(AppRoutes.AGREGAR_PRODUCTOS);
          },
        ),
        ListTile(
          leading: Icon(Icons.edit),
          title: const Text('EDITAR PRODUCTOS'),
          onTap: () {
            Get.toNamed(AppRoutes.LISTA_MODIFICAR);
          },
        ),
      ],
    );
  }
}
