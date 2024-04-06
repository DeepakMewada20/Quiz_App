import 'package:flutter/material.dart';
//import 'package:quiz_app_adv/quiz.dart';

class StartScreen extends StatelessWidget {

  const StartScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        //it is use minimum space of screen, or ye contened ko center me leke aata hai.
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            height: 250,
            width: 250,
          ),
          //add extra space of two item.
          const SizedBox(height: 40),
          const Text(
            'Learn Flutter the Fun Way!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          const SizedBox(height: 40),
          //.icon laga kar button me koi bhi icone add kar sakte hai.
          OutlinedButton.icon(
            onPressed: startQuiz,
            //add styal in a OutlineButton butten
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            ),
            //add Icone in Button
            icon: const Icon(
              Icons.arrow_right_alt,
              size: 30,
            ),
            //when you use "OutlineButton.icone" then you can not use child.
            //you use lable
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
