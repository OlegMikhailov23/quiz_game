import 'package:flutter/material.dart';

import 'package:quiz_app/start.dart';

const startAligment = Alignment.topLeft;
const endAligment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colorStart, this.colorEnd, {super.key});

  final Color colorStart;
  final Color colorEnd;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colorStart, colorEnd],
          begin: startAligment,
          end: endAligment,
        ),
      ),
      child: const Center(
        child: Start(),
      ),
    );
  }
}
