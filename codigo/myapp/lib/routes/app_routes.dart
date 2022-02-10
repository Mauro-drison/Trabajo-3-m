import 'package:get/get.dart';
import 'package:myapp/modules/home/bindings.dart';
import 'package:myapp/modules/home/home.dart';
import 'package:myapp/registrarse.dart';
import 'package:myapp/modules/home/carrito_compras.dart';
import 'package:myapp/routes/app_pages.dart';

class AppPages {
  //esta es una lista donde se definieron las rutas
  static final List<GetPage> pages = [
    //tenoms una lista conlas rutas basadar en las constantes
    GetPage(
      name: AppRoutes.INITIAL,
      //cada una hace referencia a un stalesswidget
      page: () => Home(),
      binding: PageBinding(),
    ),
    GetPage(
        name: AppRoutes.HOMEPAGE, page: () => Home(), binding: PageBinding()),
    GetPage(
        name: AppRoutes.REGISTRARSE,
        page: () => Registrarse(),
        binding: PageBinding()),
    GetPage(
        name: AppRoutes.CARRITO_COMPRAS,
        page: () => Carrito_compras(),
        binding: PageBinding()),
  ];
}
