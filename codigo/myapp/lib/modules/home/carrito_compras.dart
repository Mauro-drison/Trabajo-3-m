import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/global_widgets/loading_widget.dart';

import 'package:myapp/modules/home/controller.dart';

// ignore: must_be_immutable
class Carrito_compras extends GetView<ProductosController> {
  TextEditingController editingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(225, 223, 222, 122),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(89, 89, 89, 12),
        title: Text("Confirmar la compra"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: listaProductos()),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: FloatingActionButton(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Desea confirmar la compra'),
                  content: Text('precio total: \$ ${controller.sumaProductos}'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(realizarCompra()),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              ),
              backgroundColor: Colors.green,
              child: const Icon(Icons.confirmation_number_sharp),
            ),
          ),
        ],
      ),
    );
  }

  Container listaProductos() {
    return Container(
      child: Obx(() => controller.status.value == Status.loading
          ? LoadingWidget()
          : ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    height: 80.0,
                    child: Center(
                      child: ListTile(
                        //contentPadding: EdgeInsets.all(100.0),
                        title: Text(controller.listaCompras[index].nombre),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.cancel,
                            color: Colors.red,
                          ),
                          onPressed: () {
                            controller.Cancelar_compra(index);
                          },
                        ),
                        leading: SizedBox(
                          height: 100.0,
                          width: 100.0,
                          child: Image.network(
                              controller.listaCompras[index].imagen),
                        ),
                      ),
                    ),
                  ),
                );
              },
              itemCount: controller.listaCompras.length,
            )),
    );
  }

  realizarCompra() async {
    for (var x in controller.listaCompras) {
      controller.LiataTemp_Guardado(x);
    }
    controller.Cancelar_compras_temp();
  }
}
