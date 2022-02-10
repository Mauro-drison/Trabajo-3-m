import 'package:get/get.dart';
import 'package:myapp/modules/home/controller.dart';
import 'package:dio/dio.dart';

//hacemos una inyeccion de dependencia del controlador a cada pagina
class PageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Dio());
    Get.lazyPut(() => TrabajoProvider());

    Get.lazyPut(() => TrabajoRepository());
    //carga de forma perezosa
    //vincula el controlador con el home
    Get.lazyPut<Controller>(() => TrabajoController(trabajoRepository: Get.find()));
  }
}
