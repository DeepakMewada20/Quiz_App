import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
  const StartScreen(this.startQuiz,{super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png',width: 300,height: 300,
          color: const Color.fromARGB(139, 255, 255, 255),
          ),
          const SizedBox(height: 40,),
          const Text('Leare Flutter In Fun Way!',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 40,),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,),
            icon: const Icon(Icons.arrow_right_alt),
            label : const Text('Start Quiz'),),
        ],
      ),
    );
  }
}