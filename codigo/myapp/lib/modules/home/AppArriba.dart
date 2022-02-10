import 'package:flutter/material.dart';

class AppArriba extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //el padding nos permite dar un relleno
    return Padding(
      //le damos un relleno de 20 pixeles a la izquierda y a la derecha
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      child: Row(
        //produce un acomodamiento o alineacion ejemplo:*----*---*
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.location_on),
              //medida
              SizedBox(
                width: 3.0,
              ),
              Text(
                "En esta parte ira la ubicacion",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          Container(
            //alto
            height: 55.0,
            //ancho
            width: 55.0,
            decoration: BoxDecoration(
                //borde redondeado
                borderRadius: BorderRadius.circular(15.0),
                //color
                border: Border.all(color: Colors.grey, width: 2.0)),
            child: Icon(Icons.phone_iphone),
          )
        ],
      ),
    );
  }
}
