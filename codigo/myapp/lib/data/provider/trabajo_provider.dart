import 'package:dio/dio.dart';
import 'package:get/get.dart' as getr;
import 'package:myapp/data/model/trabajo_model.dart';

class ProductoProvider {
  final String _url = 'https://trabajo-de-comer-default-rtdb.firebaseio.com';

  final Dio _dio = getr.Get.find<Dio>();

  Future<List<Productos>> getProductos() async {
    final url = '$_url/productos.json';

    final Response response = await _dio.get(
      url,
    );
    if (response.statusCode == 200) {
      print(response);
      Map data = response.data;
      print(data);
      // ignore: unnecessary_null_comparison
      if (data == null) return [];

      final List<Productos> listaProductos = [];
      //manipula el mapa dando anccion a la clave valor-- en este caso asignamos el id
      data.forEach((id, trbjo) {
        print("$id <= numero del id");
        final productoTemp = Productos.fromJson(trbjo);
        productoTemp.id = id;
        listaProductos.add(productoTemp);
        print(productoTemp.precio);
      });
      print(listaProductos);
      return listaProductos;
    } else {
      throw Exception();
    }
  }

  Future<bool> crearProducto(Productos productos) async {
    final url = '$_url/productos.json';
    //print("PROVIDER");

    final resp = await _dio.post(url, data: trabajoToJson(productos));

    Map data = resp.data;

    return true;
  }

  Future<bool> modificarProductos(Productos productos) async {
    final url = '$_url/productos/${productos.id}.json';
    print("${productos.id} este es el id");
    final resp = await _dio.put(url, data: trabajoToJson(productos));

    Map data = resp.data;

    return true;
  }
}
