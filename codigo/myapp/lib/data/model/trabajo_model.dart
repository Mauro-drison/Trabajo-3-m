// To parse this JSON data, do
//
//     final trabajo = trabajoFromJson(jsonString);

import 'dart:convert';

Productos trabajoFromJson(String str) => Productos.fromJson(json.decode(str));

String trabajoToJson(Productos data) => json.encode(data.toJson());

class Productos {
  Productos({
    this.id = "",
    this.caracteristicas = "",
    this.estado = false,
    this.imagen = "",
    this.nombre = "",
    this.precio = 0,
    this.stock = 1,
  });

  String id;
  String caracteristicas;
  bool estado;
  String imagen;
  String nombre;
  int precio;
  int stock;

  factory Productos.fromJson(Map<String, dynamic> json) => Productos(
        //id: json["id"],
        caracteristicas: json["caracteristicas"],
        estado: json["estado"],
        imagen: json["imagen"],
        nombre: json["nombre"],
        precio: json["precio"],
        stock: json["stock"],
      );

  Map<String, dynamic> toJson() => {
        //"id": id,
        "caracteristicas": caracteristicas,
        "estado": estado,
        "imagen": imagen,
        "nombre": nombre,
        "precio": precio,
        "stock": stock,
      };
}
