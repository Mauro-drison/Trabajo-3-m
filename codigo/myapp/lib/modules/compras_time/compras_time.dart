import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/global_widgets/loading_widget.dart';
import 'package:myapp/modules/home/controller.dart';

// ignore: must_be_immutable
class ComprasTime extends GetView<ProductosController> {
  TextEditingController editingController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(89, 89, 89, 12),
        title: Text("Productos comprados"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
          ),
          Expanded(child: listaProductos()),
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
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    //contentPadding: EdgeInsets.all(100.0),
                    title: Text(controller.listaTiempoCompras[index].nombre),
                    subtitle: Text(
                        controller.listaTiempoCompras[index].precio.toString()),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.check,
                        color: Colors.green,
                      ),
                      onPressed: () {
                        controller.restarStock(index);
                      },
                    ),
                    leading: SizedBox(
                      height: 100.0,
                      width: 100.0,
                      child: Image.network(
                          controller.listaTiempoCompras[index].imagen),
                    ),
                  ),
                );
              },
              itemCount: controller.listaTiempoCompras.length,
            )),
    );
  }

  realizarCompra() async {
    if (!_formKey.currentState!.validate()) return;
    print("Boton guardar precionado");

    for (var x in controller.listaTiempoCompras) {
      print(x);
    }
    _formKey.currentState!.save();
    print("Boton guardar precionado");
    //await controller.modificarProductos(controller.compras);
    Get.snackbar('procesado', 'Datos_guardados');
  }
}
