import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        //backgroundColor: Color.fromARGB(255, 87, 6, 226), // or Colors.blue
        body: GradientContainer(
          Colors.blue,
          Colors.yellow,
        ),
      ),
    ),
  );
}
