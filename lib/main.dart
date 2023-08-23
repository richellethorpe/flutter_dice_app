import 'package:flutter/material.dart';
import 'package:practice_dice/gradient_container.dart';

void main() {
  runApp(
     MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          const Color.fromARGB(255, 7, 78, 200),
          const Color.fromARGB(26, 251, 250, 250),
        ),
      ),
    ),
  );
}
