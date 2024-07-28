
import 'package:flutter/material.dart';
import 'package:quiz_app_adv/answer_butten.dart';
import 'package:quiz_app_adv/data/question.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onselectAnswer});

  final void Function(String answer) onselectAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void questionAnswer(String answer) {
    setState(() {
      widget.onselectAnswer(answer);
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = question[currentQuestionIndex];
    return Container(
      //margin: const EdgeInsets.only(left: 300, right: 300),
      margin: const EdgeInsets.all(40),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.abel(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      // wordSpacing: ,
                      letterSpacing: 1)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswer().map(
                  (answer) => Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      AnswerButten(
                        answer: answer,
                        ontap: () {
                          questionAnswer(answer);
                        },
                      ),
                    ],
                  ),
                ),
            // AnswerButten(answer: currentQuestion.answer[0], ontap: questionAnswer),
            // const SizedBox(height: 10),
            // AnswerButten(answer: currentQuestion.answer[1], ontap: () {}),
            // const SizedBox(height: 10),
            // AnswerButten(answer: currentQuestion.answer[2], ontap: () {}),
            // const SizedBox(height: 10),
            // AnswerButten(answer: currentQuestion.answer[3], ontap: () {}),
          ],
        ),
      ),
    );
  }
}
