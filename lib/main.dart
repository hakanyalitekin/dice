import 'gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(<Color>[
          Color.fromARGB(255, 76, 0, 189),
          Color.fromARGB(255, 26, 8, 40)
        ]),
      ),
    ),
  );
}
