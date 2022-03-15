import 'package:get/get.dart';
import 'package:myapp/data/model/trabajo_model.dart';
import 'package:myapp/data/repository/trabajo_repository.dart';
import 'package:myapp/routes/app_pages.dart';

enum Status { loading, success, error }

class ProductosController extends GetxController {
  final ProductoRepository productoRepository;

  ProductosController({required this.productoRepository});

  var estado1 = true.obs;

  final _productoList = [].obs;

  // ignore: invalid_use_of_protected_member
  get productoList => this._productoList.value;
  set productoList(value) => this._productoList.value = value;
  final status = Status.loading.obs;

  //--------------lista para modificar------------------
  var _listaCompras = [].obs;

  // ignore: invalid_use_of_protected_member
  get listaCompras => this._listaCompras.value;
  set listaCompras(value) => this._listaCompras.value = value;
//---------------------------------------

  var _listaTiempoCompras = [].obs;

  // ignore: invalid_use_of_protected_member
  get listaTiempoCompras => this._listaTiempoCompras.value;
  set listaTiempoCompras(value) => this._listaTiempoCompras.value = value;

//----------------------------------------------

  final _compras = Productos().obs;
  get compras => this._compras.value;
  set compras(value) => this._compras.value = value;

//--------------------suma del total de productos--------
  var sumaProductos = 0.obs;

  @override
  void onInit() {
    getTrabajosAll();

    super.onInit();
  }

  Future<void> getTrabajosAll() async {
    return productoRepository.getProductos().then(
      (data) {
        this.productoList = data;
        //con esto le doy el exito para que se detenga la carga del login
        status(Status.success);
      },
      onError: (err) {
        print("$err ERROR DEL CONTROLADOR1");
        return status(Status.error);
      },
    );
  }

  Guardar(index) {
    _listaCompras.add(this.productoList[index]);
    sumaProductos = sumaProductos + productoList[index].precio;
    print(sumaProductos);
  }

  LiataTemp_Guardado(index) {
    _listaTiempoCompras.add(index);
  }

  Cancelar_compra(index) {
    _listaCompras.remove(this.listaCompras[index]);
    sumaProductos = sumaProductos - productoList[index].precio;
    print(sumaProductos);
  }

  Cancelar_compras_temp() {
    _listaCompras.clear();
  }

  IrItemProductos(index) {
    this.compras = this.productoList[index];
    this.estado1 = RxBool(compras.estado);
    Get.toNamed(AppRoutes.AGREGAR_PRODUCTOS);
  }

  Future<void> crearProducto(Productos compras) async {
    try {
      print("SIN ERROR");
      await productoRepository.crearProducto(compras);

      getTrabajosAll();
    } catch (e) {
      print("$e ERROR EN EL CONTROLER");
    }
  }

  Future<void> modificarProducto(Productos productos) async {
    try {
      print("SIN ERROR");
      await productoRepository.modificarProductos(productos);

      getTrabajosAll();
    } catch (e) {
      print("$e ERROR EN EL CONTROLER2");
    }
  }

  void restarStock(index) {
    this.compras = this.listaTiempoCompras[index];
    if (this.compras.stock == 0) {
      this.compras.estado = false;
    } else {
      this.compras.stock = this.compras.stock - 1;
      this.compras.estado = true;
    }
    modificarProducto(this.compras);
    _listaTiempoCompras.remove(this.listaTiempoCompras[index]);
    getTrabajosAll();
    print(this.compras.stock);
  }
}
