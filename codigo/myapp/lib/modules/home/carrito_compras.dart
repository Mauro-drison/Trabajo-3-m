import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/modules/home/controller.dart';

class Carrito_compras extends GetView<Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("perro"),
        ),
        body: Center(
          child: Text("gato"),
        ));
  }
}
