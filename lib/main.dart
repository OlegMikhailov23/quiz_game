import 'package:flutter/material.dart';

import 'package:quiz_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            Color.fromARGB(255, 57, 24, 114), Color.fromARGB(255, 77, 53, 149)),
      ),
    ),
  );
}
