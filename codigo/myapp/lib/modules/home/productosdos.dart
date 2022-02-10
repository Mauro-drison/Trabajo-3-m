import 'package:flutter/material.dart';

class ProductosDOS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //utiliza la medida del ancho
    double width = MediaQuery.of(context).size.width;
    // contenedor donde se va a dibujar lo que se llame
    return Container(
      //alto ancho
      height: 200.0,
      width: width,
      child: ListView(
        //orizontal
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text("dfd") //ProductosTabs(
              //"https://i.blogs.es/134001/piratas-del-caribe-tendra-sexta-parte/1366_2000.jpg",
              //"pirata"),
              ),
          //ProductosTabs(
          //    "https://i.blogs.es/134001/piratas-del-caribe-tendra-sexta-parte/1366_2000.jpg",
          //    "piratas 3343"),
          //ProductosTabs(
          //    "https://i.blogs.es/134001/piratas-del-caribe-tendra-sexta-parte/1366_2000.jpg",
          //    "piratas 3343"),
          //ProductosTabs(
          //    "https://i.blogs.es/134001/piratas-del-caribe-tendra-sexta-parte/1366_2000.jpg",
          //    "piratas 3343")
        ],
      ),
    );
  }
}
