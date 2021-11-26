import 'package:flutter/material.dart';
import 'package:myapp/pages/layout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MAURO',
      debugShowCheckedModeBanner: false,
      home: MyHomePagepri(),
    );
  }
}
