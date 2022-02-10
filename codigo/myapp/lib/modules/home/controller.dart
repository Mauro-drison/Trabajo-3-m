import 'package:get/get.dart';

//controlador donde se pueden poner todos los metodos y atributos que tenga un estado

enum Status { loading, success, error}
class Controller extends GetxController {
  //atributos
  var count = 0.obs;
  //metodos
  add() => count.value++;
  subtract() => count.value--;

  final TrabajoRepository trabajoRepository;

  TrabajoController({this.trabajoRepository});

  final _trabajoList = List<Trabajo>().obs;

  get trabajoList => this._trabajoList.value;
  set trabajoList(value) => this._trabajoList.value = value;
  final status = Status.loading.obs;

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> getTrabajosAll() async {
    return trabajoRepository.getTrabajos().then(
      (data) {
        this.trabajoList = data;
        status(Status.success);
      },
      onError: (err) {
        print("$err");
        return status(Status.error);
      },
    )
    }
}
