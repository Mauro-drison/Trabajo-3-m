import 'package:flutter/material.dart';

class Barra_izquierda extends StatelessWidget {
  const Barra_izquierda({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      // Important: Remove any padding from the ListView.
      //adding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.cyan,
          ),
          child: Column(
            children: [
              IconButton(
                icon: Icon(
                  Icons.account_circle_rounded,
                  size: 70,
                ),
                onPressed: () {
                  print("object");
                },
              ),
            ],
          ),
        ),
        ListTile(
          leading: Icon(Icons.add_shopping_cart_outlined),
          title: const Text(
            'MIS COMPRAS',
            style: TextStyle(),
          ),
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
        ListTile(
          leading: Icon(Icons.local_attraction_outlined),
          title: const Text('OFERTAS'),
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
      ],
    );
  }
}
