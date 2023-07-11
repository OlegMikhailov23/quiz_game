import 'package:flutter/material.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() {
    return _StartState();
  }
}

class _StartState extends State<Start> {
  void startGame() {
    setState(() {
      print('Game started!');
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 200,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: OutlinedButton(
            onPressed: startGame,
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.all(16.0),
              foregroundColor: Colors.white,
              backgroundColor: Colors.amberAccent,
              textStyle: const TextStyle(fontSize: 28),
            ),
            child: const Text('Start Game'),
          ),
        )
      ],
    );
  }
}
