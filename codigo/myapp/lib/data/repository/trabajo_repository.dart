import 'package:get/get.dart';
import 'package:myapp/data/model/trabajo_model.dart';
import 'package:myapp/data/provider/trabajo_provider.dart';

class ProductoRepository {
  final ProductoProvider _trabajosDataSource = Get.find<ProductoProvider>();

  @override
  // ignore: override_on_non_overriding_member
  Future<List<Productos>> getProductos() async {
    return _trabajosDataSource.getProductos();
  }

  Future<bool> modificarProductos(Productos productos) async {
    return _trabajosDataSource.modificarProductos(productos);
  }

  Future<bool> crearProducto(Productos productos) async {
    return _trabajosDataSource.crearProducto(productos);
  }
}
