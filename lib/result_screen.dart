import 'package:flutter/material.dart';
import 'package:quizapp2/data/question.dart';
import 'package:quizapp2/question_summry.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chooseAnswer,required this.restartQuiz});

  final List<String> chooseAnswer;
  final void Function() restartQuiz;

  List<Map<String, Object>> getSummryData() {
    final List<Map<String, Object>> summry = [];
    for (int i = 0; i < chooseAnswer.length; i++) {
      summry.add(
        {
          'question-index': i,
          'question': question[i].text,
          'currect-answer': question[i].answer[0],
          'user-answer': chooseAnswer[i]
        },
      );
    }
    return summry;
  }

  int findCurrectAnswer(List<String> chooseAnswer) {
    int totalCurrectAnswer = 0;
    for (int i = 0; i < chooseAnswer.length; i++) {
      if (chooseAnswer[i] == question[i].answer[0]) {
        totalCurrectAnswer++;
      }
    }
    return totalCurrectAnswer;
  }

  @override
  Widget build(context) {

    //for find total currect answer of all answer 
    //final summaryData = getSummryData();
    final int totalQuestion = question.length;
    final totalCurrectAnswer = getSummryData().where(
          (data) => data['currect-answer'] == data['user-answer'],
        ).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '$totalCurrectAnswer Ans is currect ! out of $totalQuestion',
               style: const TextStyle(
                color:  Color.fromARGB(224, 255, 255, 255),
                fontSize: 25,
               ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            QuestionSummry(
              getSummryData(),
            ),
            const SizedBox(
              height: 40,
            ),
            TextButton.icon(
              onPressed: restartQuiz,
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 69, 166, 201),
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.refresh_rounded),
              label: const Text('Restart quiz!'),
            ),
          ],
        ),
      ),
    );
  }
}
