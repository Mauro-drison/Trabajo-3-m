import 'package:flutter/material.dart';

class TodoLosProductos extends StatelessWidget {
  const TodoLosProductos(this.title, this.no, this.assetimage);

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
      child: Container(
        height: 250.0,
        width: width / 2.4,
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
            //Text(
            //  "$no restaurantes",
            //  style: TextStyle(color: Colors.grey),
            //),
            SizedBox(
              height: 10.0,
            ),
            Image(
              image: AssetImage(assetimage),
              height: 80.0,
              width: 80.0,
            ),
            ElevatedButton(
              child: Text("comprar"),
              onPressed: () {
                print("conprado");
              },
            ),
            ElevatedButton(
              child: Text(
                "cancelar",
              ),
              onPressed: () {
                print("cancelar");
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}