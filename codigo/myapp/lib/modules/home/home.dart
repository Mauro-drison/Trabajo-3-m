import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/global_widgets/loading_widget.dart';
import 'package:myapp/modules/home/AppArriba.dart';
import 'package:myapp/modules/home/controller.dart';
import 'package:myapp/modules/home/offertas.dart';
import 'package:myapp/modules/home/widgets/AppBar.dart';
import 'package:myapp/modules/home/widgets/productos.dart';

import 'package:myapp/routes/app_pages.dart';

// ignore: must_be_immutable
class Home extends GetView<ProductosController> {
  TextEditingController editingController = TextEditingController();
  //eso nos evita lineas de comandos
  @override
  Widget build(BuildContext context) {
    double widthh = MediaQuery.of(context).size.width;
    double heightt = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.black,
        drawer: Drawer(
          child: Barra_izquierda(),
        ),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(24, 24, 24, 1),
          title: Text(
            'APP 2.0',
            style: TextStyle(fontFamily: 'RobotoMono'),
          ),
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
            shrinkWrap: true,
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
                child: Expanded(
                  child: Text(
                    "CATEGORIAS:",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
              Filtro_Productos(),
              SizedBox(
                height: 20.0,
              ),
              //ProductosTabs(),
              Expanded(child: mostrarProductos(widthh, heightt))
            ],
          ),
        ));
  }

  Container mostrarProductos(double widthh, heightt) {
    return Container(
      child: Obx(() => controller.status.value == Status.loading
          ? LoadingWidget()
          : ListView.builder(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    width: widthh * 0.36,
                    height: heightt * 0.16,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      color: Colors.white,
                      elevation: 10,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.14,
                              width: MediaQuery.of(context).size.width * 0.34,
                              child: Image.network(
                                  controller.productoList[index].imagen,
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                    child: Text(
                                      controller.productoList[index].nombre,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          5, 10, 0, 0),
                                      child: Text(
                                        '\nEstado: ${controller.productoList[index].estado ? "DISPONIBLE" : "AGOTADO"} ' +
                                            '\nStock: ${controller.productoList[index].stock}'
                                                .toString(),
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 10, 0, 0),
                                  child: Text(
                                    "PRECIO: \$" +
                                        //el to string represeta el objeto como caracter de texto
                                        controller.productoList[index].precio
                                            .toString(),
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Expanded(
                                  child: IconButton(
                                    color: Colors.red,
                                    icon: Icon(Icons.shopping_bag_outlined),
                                    onPressed: () async {
                                      controller.Guardar(index);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
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
