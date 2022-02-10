import 'package:dio/dio.dart';
import 'package:get/get.dart' as getr;

class TrabajoProvider {
  final String _url = 'https://protecto-flutter-default-rtdb.firebaseio.com';

  final Dio _dio = getr.Get.find<Dio>();

  Future<List<Trabajo>> getTrabajos() async {
    final url = '$_url/trabajo.json';
    
    final Response response = await _dio.get(
      url,
    );

    if (response.statusCode == 200) {
      Map data = response.data;
      if (data == null) return [];
      final List<Trabajo> listaTrabajos = List();

      data.forEach((id,trbjo) {
        final trabajoTemp = Trabajo.fromJson(trbjo);
        trabajoTemp.id = id;
        listaTrabajos.add(trabajoTemp);
      });
      return listaTrabajos;

      } else {
        throw Exception();
      }
  }
}

