import 'package:flutter/material.dart';

class ProductosTabs extends StatelessWidget {
  const ProductosTabs(this.address, this.name);

  final String address;
  final String name;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: Container(
          width: width / 2.4,
          child: Column(
            //alineacion trasversal
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // el contenedor tiene un borde circular de 20
              Container(
                //altura
                height: 120.0,
                //ancho
                width: width / 2.4,
                //se decora la caja
                decoration: BoxDecoration(
                    //borde circular de 20
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                        image: NetworkImage(address), fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                name,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 5.0,
              )
            ],
          ),
        ));
  }
}
