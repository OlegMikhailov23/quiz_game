import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/start.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/data/questions.dart';

const startAligment = Alignment.topLeft;
const endAligment = Alignment.bottomRight;

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';
  List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      activeScreen = 'quiz-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  void resetGame() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'quiz-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = Start(switchScreen);

    if (activeScreen == 'quiz-screen') {
      screenWidget = QustionScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(
        choseAnswers: selectedAnswers,
        resetGame: resetGame,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 61, 33, 108),
                Color.fromARGB(255, 164, 45, 200)
              ],
              begin: startAligment,
              end: endAligment,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
