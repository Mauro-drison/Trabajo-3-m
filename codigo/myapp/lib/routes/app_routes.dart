import 'package:get/get.dart';
import 'package:myapp/modules/agregar_productos.dart';
import 'package:myapp/modules/compras_time/compras_time.dart';
import 'package:myapp/modules/home/bindings.dart';
import 'package:myapp/modules/home/home.dart';
import 'package:myapp/modules/modificar/modificar_productos.dart';
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
      binding: ProductoBinding(),
    ),
    GetPage(
        name: AppRoutes.HOMEPAGE,
        page: () => Home(),
        binding: ProductoBinding()),
    GetPage(
        name: AppRoutes.REGISTRARSE,
        page: () => Registrarse(),
        binding: ProductoBinding()),
    GetPage(
        name: AppRoutes.CARRITO_COMPRAS,
        page: () => Carrito_compras(),
        binding: ProductoBinding()),
    GetPage(
        name: AppRoutes.AGREGAR_PRODUCTOS,
        page: () => FormProductos(),
        binding: ProductoBinding()),
    GetPage(
        name: AppRoutes.COMPRAS_TIEMPO,
        page: () => ComprasTime(),
        binding: ProductoBinding()),
    GetPage(
        name: AppRoutes.LISTA_MODIFICAR,
        page: () => ListaModif(),
        binding: ProductoBinding()),
  ];
}
