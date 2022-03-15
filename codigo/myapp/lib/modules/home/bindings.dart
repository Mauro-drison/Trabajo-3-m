import 'package:get/get.dart';

import 'package:dio/dio.dart';
import 'package:myapp/data/provider/trabajo_provider.dart';
import 'package:myapp/data/repository/trabajo_repository.dart';
import 'package:myapp/modules/home/controller.dart';

//hacemos una inyeccion de dependencia del controlador a cada pagina
class ProductoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Dio());
    Get.lazyPut(() => ProductoProvider());

    Get.lazyPut(() => ProductoRepository());

    Get.lazyPut<ProductosController>(
        () => ProductosController(productoRepository: Get.find()));
  }
}
