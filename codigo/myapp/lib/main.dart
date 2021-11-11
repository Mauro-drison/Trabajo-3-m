import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var random = Random();

  var leftDiceNumber = 1;

  var rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image(image: AssetImage("images/dice$leftDiceNumber.png")),
              onPressed: () {
                setState(() {
                  leftDiceNumber = random.nextInt(5) + 1;
                  print("Button 1 pressed: value $leftDiceNumber");
                });
              },
            ),
            flex: 1,
          ),
          Expanded(
            child: TextButton(
              child:
                  Image(image: AssetImage("images/dice$rightDiceNumber.png")),
              onPressed: () {
                setState(() {
                  rightDiceNumber = random.nextInt(5) + 1;
                  print("Button 2 pressed: value $rightDiceNumber");
                });
              },
            ),
            flex: 1,
          ),
        ],
      ),
    );
  }
}
