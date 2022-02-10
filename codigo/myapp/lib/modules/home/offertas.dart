import 'package:flutter/material.dart';

class Offertas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //se toma el ancho del dispositivo
    double width = MediaQuery.of(context).size.width;
    return Padding(
      //alto ancho
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      child: Container(
        height: 160.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Color.fromARGB(255, 248, 230, 1),
        ),
        child: Row(
          children: [
            //en la fil podemos poner varios contenedores
            Container(
              padding: EdgeInsets.only(left: width / 20),
              //alto
              height: 150.0,
              //ancho
              width: width / 2.2,
              child: Column(
                //centro
                mainAxisAlignment: MainAxisAlignment.center,
                //transbersalmente
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Oferta del día",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(215, 153, 79, 1),
                    ),
                  ),
                  //espacio vertival
                  SizedBox(
                    height: width / 30,
                  ),
                  Text(
                    "la oferta del dia tiene un descuento del 20%",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            Container(
              //decoraciones
              height: 150.0,
              width: width / 2.5,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/imagen7.jpg"))),
            )
          ],
        ),
      ),
    );
  }
}
