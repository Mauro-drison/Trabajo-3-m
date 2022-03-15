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
        margin: EdgeInsets.only(top: 20),
        height: 160.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Color.fromRGBO(203, 214, 69, 1),
        ),
        child: Expanded(
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
                      "OFERTAS DEL DÍA",
                      style: TextStyle(
                        fontSize: 19.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    //espacio vertival
                    SizedBox(
                      height: width / 30,
                    ),
                    Text(
                      "Netbook en oferta por un tiempo límite, 20% de descuento",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  //decoraciones
                  height: 150.0,
                  width: width / 2.5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/imagen2.jpg"))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
