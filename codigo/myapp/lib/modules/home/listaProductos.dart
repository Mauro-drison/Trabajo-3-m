import 'package:flutter/material.dart';

class ListaProductos extends StatelessWidget {
  const ListaProductos(this.title, this.no, this.assetimage);

  final String title;
  final String no;
  final String assetimage;

  @override
  Widget build(BuildContext context) {
    //de mediaquery se obtiene el ancho
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding:
          //a la derecha 20 pixeles
          EdgeInsets.only(right: 20.0),
      child: GestureDetector(
        onTap: () {
          // Toggle light when tapped.
          print("perro");
        },
        child: Container(
          height: 170.0,
          width: width / 3.3,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color.fromRGBO(255, 248, 230, 1)),
          child: Column(
            //esta al eje principal
            mainAxisAlignment: MainAxisAlignment.center,
            //eje transversal
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "$no restaurantes",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 10.0,
              ),
              Image(
                image: AssetImage(assetimage),
                height: 20.0,
                width: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
