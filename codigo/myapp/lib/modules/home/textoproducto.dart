import 'package:flutter/material.dart';

class TextoProductos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        children: [
          Text(
            "Productos local",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Mendoza, Argentina",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(215, 153, 79, 1)),
          )
        ],
      ),
    );
  }
}
