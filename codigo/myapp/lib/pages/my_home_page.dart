import 'package:flutter/material.dart';
import 'package:myapp/pages/second_page.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hola mundo"),
      ),
      body: Row(
        children: [
          Center(
            child: ElevatedButton(
              child: Text("mostrar segunda pantalla"),
              onPressed: () {
                _showSecondPage(context);
              },
            ),
          ),
        ],
      ),
    );
  }

  void _showSecondPage(BuildContext context) {
    Navigator.of(context).pushNamed("/second",
        arguments: ScreenArguments(title: "maene", message: "perro"));
  }
}
