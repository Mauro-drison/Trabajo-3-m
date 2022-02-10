import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/modules/home/bindings.dart';
import 'package:myapp/modules/home/home.dart';
import 'package:myapp/routes/app_pages.dart';
import 'package:myapp/routes/app_routes.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    //ruta inicial
    initialRoute: AppRoutes.INITIAL,
    //enruptamiento de la navegacion

    //le decimos que el home tiene tiene vinculado un vinculador
    //                           pagina               bindig
    defaultTransition: Transition.rightToLeftWithFade,
    getPages: AppPages.pages,
    home: Home(),
    initialBinding: PageBinding(),
  ));
}
