import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/global_widgets/loading_widget.dart';
import 'package:myapp/modules/home/controller.dart';

// ignore: must_be_immutable
class ListaModif extends GetView<ProductosController> {
  TextEditingController editingController = TextEditingController();
  //eso nos evita lineas de comandos
  @override
  Widget build(BuildContext context) {
    double widthh = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color.fromRGBO(38, 39, 38, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(24, 24, 24, 12),
          title: Text('APP 2.0'),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView(
            shrinkWrap: true,
            children: [
              SizedBox(
                height: 5.0,
              ),

              //ProductosTabs(),
              Expanded(child: mostrarProductos(widthh))
            ],
          ),
        ));
  }

  Container mostrarProductos(double widthh) {
    return Container(
      child: Obx(() => controller.status.value == Status.loading
          ? LoadingWidget()
          : ListView.builder(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                print("$index index del objeto");
                return Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),
                    height: 100.0,
                    width: widthh,
                    child: Center(
                      child: ListTile(
                        //contentPadding: EdgeInsets.all(100.0),

                        title: Text(controller.productoList[index].nombre),
                        subtitle: Text("PRECIO: " +
                            //el to string represeta el objeto como caracter de texto
                            controller.productoList[index].precio.toString() +
                            '\n Disponible :${controller.productoList[index].estado ? "Si" : "No"} ' +
                            '\n Stock: ${controller.productoList[index].stock}'
                                .toString()),

                        leading: SizedBox(
                          height: 100.0,
                          width: 100.0,
                          child: Image.network(
                              controller.productoList[index].imagen),
                        ),
                        trailing: IconButton(
                          color: Colors.red,
                          icon: Icon(Icons.edit),
                          onPressed: () async {
                            controller.IrItemProductos(index);
                          },
                        ),
                      ),
                    ),
                  ),
                );
              },
              itemCount: controller.productoList.length,
            )),
    );
  }
}
