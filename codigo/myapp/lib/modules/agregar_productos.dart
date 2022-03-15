import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

import 'package:myapp/modules/home/controller.dart';
import 'package:myapp/routes/app_pages.dart';
import 'package:myapp/utils/utils.dart' as utils;

// ignore: must_be_immutable
class FormProductos extends GetView<ProductosController> {
  final _formKey = GlobalKey<FormState>();

  //bool _guardando = false;

  @override
  Widget build(BuildContext context) {
    return Obx(() => (Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(89, 89, 89, 12),
          title: Text('Agregar Productos'),
          leading: IconButton(
            onPressed: () {
              Get.offAllNamed(AppRoutes.HOMEPAGE);
              print(_formKey);
            },
            tooltip: 'Ir a Home',
            icon: Icon(Icons.home),
          ),
        ),
        body: Container(
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _crearNombre(),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _crearImagen(),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _crearCaracteristicas(),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: _crearCheckboxListTile()),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _crearPrecio(),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _crearStock(),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.00),
                  child: _crearBoton(),
                ),
              ],
            ),
          ),
        ))));
  }

  Widget _crearNombre() {
    return TextFormField(
      initialValue: controller.compras.nombre,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          labelText: 'nombre',
          fillColor: Colors.grey[200],
          hintText: 'Ingrese Texto',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              width: 4,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.black,
              width: 1,
            ),
          )),
      onSaved: (value) => controller.compras.nombre = value,
      validator: (value) {
        if (value!.length < 3) {
          return 'ingrese el nombre del compras';
        } else {
          print("sin valor");
          return null;
        }
      },
    );
  }

  Widget _crearImagen() {
    return TextFormField(
      toolbarOptions: ToolbarOptions(
        copy: true,
        paste: true,
      ),
      initialValue: controller.compras.imagen,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        filled: true,
        labelText: 'imagen',
        fillColor: Colors.grey[200],
        hintText: 'direccion de la imagen en internet',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 4,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.black,
            width: 1,
          ),
        ),
        suffix: IconButton(
          icon: Icon(Icons.paste),
          onPressed: () {},
        ),
      ),
      onSaved: (value) => controller.compras.imagen = value,
      validator: (value) {
        if (value!.length < 3) {
          return 'ingrese la imagen';
        } else {
          print("sin valor");
          return null;
        }
      },
    );
  }

  Widget _crearCaracteristicas() {
    return TextFormField(
      initialValue: controller.compras.caracteristicas,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          labelText: 'caracteristicas',
          fillColor: Colors.grey[200],
          hintText: 'Ingrese Texto',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              width: 4,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.black,
              width: 1,
            ),
          )),
      onSaved: (value) => controller.compras.caracteristicas = value,
      validator: (value) {
        if (value!.length < 3) {
          return 'ingrese las caracteristicas';
        } else {
          print("sin valor");
          return null;
        }
      },
    );
  }

  Widget _crearCheckboxListTile() {
    return CheckboxListTile(
      value: controller.estado1.value,
      onChanged: (v) => {controller.estado1.value = v!},
      title: Text('activo'),
      subtitle: Text('disponible o no'),
      //activeColor: Colors.deepPurple,
    );
  }

  Widget _crearPrecio() {
    return TextFormField(
      initialValue: controller.compras.precio.toString(),
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      decoration: InputDecoration(
          labelText: 'precio',
          fillColor: Colors.grey[200],
          hintText: 'ingrese texto',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              width: 4,
            ),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.black,
                width: 1,
              ))),
      onSaved: (value) => controller.compras.precio = int.parse(value!),
      validator: (value) {
        if (utils.isNumeric(value!)) {
          return null;
        } else {
          return 'solo número';
        }
      },
    );
  }

  Widget _crearStock() {
    return TextFormField(
      initialValue: controller.compras.stock.toString(),
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          labelText: 'stock',
          fillColor: Colors.grey[200],
          hintText: 'Ingrese Texto',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              width: 4,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.black,
              width: 1,
            ),
          )),
      onSaved: (value) => controller.compras.stock = int.parse(value!),
      validator: (value) {
        if (utils.isNumeric(value!)) {
          return null;
        } else {
          return 'solo número';
        }
      },
    );
  }

  Widget _crearBoton() {
    return TextButton(
      child: Text('Guardar'),
      onPressed: _submit,
    );
  }

  void _submit() async {
    print(controller.compras.nombre);
    if (!_formKey.currentState!.validate()) return;
    print("Boton guardar precionado0");
    _formKey.currentState!.save();

    if (controller.compras.id == "") {
      print("Boton guardar precionado1");
      controller.compras.estado = controller.estado1.value;
      await controller.crearProducto(controller.compras);

      Get.snackbar(
        'PROCESADO',
        'DATOS GUARDADOS',
      );
    } else {
      print("Boton guardar precionado2");
      controller.compras.estado = controller.estado1.value;
      await controller.modificarProducto(controller.compras);
      controller.compras.id = "";
      Get.snackbar('procesado', 'Datos_guardados');
    }
  }
}
