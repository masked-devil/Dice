import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Roll Dice App',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            backgroundColor: const Color.fromARGB(255, 33, 22, 46),
            shadowColor: const Color.fromARGB(151, 0, 0, 0),
          ),
          body: const GradientContainer(
              [Color.fromARGB(255, 0, 0, 0), Color.fromARGB(255, 26, 2, 80)])),
    ),
  );
}
