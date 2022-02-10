import 'package:get/get.dart';
import 'package:dio/dio.dart';

class TrabajoRepository {
  final TrabajoProvider _trabajosDataSource = Get.find<TrabajoRepository>();

  @override
  Future<List<Trabajo>> getTrabajos() async {
    return _trabajosDataSource.getTrabajos();
  }
}
