// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    Welcome({
        this.id="",
        this.caracteristicas="",
        this.imagen="",
        this.nombre="",
        this.precio=0,
        this.stock=0,
    });

    String id;
    String caracteristicas;
    String imagen;
    String nombre;
    int precio;
    int stock;

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        //id: json["id"],
        caracteristicas: json["caracteristicas"],
        imagen: json["imagen"],
        nombre: json["nombre"],
        precio: json["precio"],
        stock: json["stock"],
    );

    Map<String, dynamic> toJson() => {
        //"id": id,
        "caracteristicas": caracteristicas,
        "imagen": imagen,
        "nombre": nombre,
        "precio": precio,
        "stock": stock,
    };
}
