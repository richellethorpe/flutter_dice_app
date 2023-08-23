import 'package:flutter/material.dart';
import 'package:practice_dice/gradient_container.dart';

void main() {
  runApp(
     const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
           Color.fromARGB(255, 7, 78, 200),
           Color.fromARGB(26, 251, 250, 250),
        ),
      ),
    ),
  );
}
