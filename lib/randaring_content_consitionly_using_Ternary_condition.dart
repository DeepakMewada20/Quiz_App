import 'package:flutter/material.dart';
import 'package:quiz_app_adv/qustion.dart';
import 'package:quiz_app_adv/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeStreen = 'start-Screen';

  void switchScreen() {
    setState(() {
      activeStreen = 'qustion-Screen';
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 69, 13, 191),
                  Color.fromARGB(255, 70, 34, 126),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            //randaring content consitionly using ternary Operater
            child: activeStreen == 'start-Screen'
                ? StartScreen(switchScreen)
                : const QustionScreen(),
          ),
        ),
      ),
    );
  }
}
