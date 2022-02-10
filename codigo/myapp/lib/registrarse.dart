import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/routes/app_pages.dart';

class Registrarse extends StatefulWidget {
  @override
  Registro createState() => Registro();
}

class Registro extends State<Registrarse> {
  // Crea un controlador de texto. Lo usaremos para recuperar el valor actual
  // del TextField!
  final myController = TextEditingController();

  @override
  void dispose() {
    // Limpia el controlador cuando el Widget se descarte
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      title: 'LOGUEARSE',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawerEnableOpenDragGesture: false,
        appBar: AppBar(
          title: Text('LOGUEARSE'),
        ),
        body: Container(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: IconButton(
                    icon: Icon(
                      Icons.account_circle_rounded,
                    ),
                    onPressed: () {
                      Get.toNamed(AppRoutes.HOMEPAGE);
                    },
                    iconSize: 100.0,
                  ),
                )
              ],
            ),
            Row(
              children: [],
            ),
            Row(
              children: [Text("data")],
            ),
            Row(
              children: [Text("data")],
            ),
            Row(
              children: [Text("data")],
            )
          ],
        )),
        floatingActionButton: FloatingActionButton(
          // Cuando el usuario pulsa el botón, muestra un diálogo de alerta con el
          // texto que el usuario ha digitado en nuestro campo de texto.
          onPressed: () {},
          tooltip: 'Show me the value!',
          child: Icon(Icons.text_fields),
        ),
      ),
    );
  }
}
