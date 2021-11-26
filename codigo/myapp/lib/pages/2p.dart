import 'package:flutter/material.dart';

class ExtractArgumentsScreen extends StatelessWidget {
  const ExtractArgumentsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Extrae los argumentos de la propiedad settings del ModalRoute actual y lo convierte
    // en un objeto ScreenArguments.
    //ScreenArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("PERRO"),
      ),
      body: Center(
        child: Text("PERRO"),
      ),
    );
  }
}

class ScreenArguments {
  String title;
  String message;

  ScreenArguments({required this.title, required this.message});
}
