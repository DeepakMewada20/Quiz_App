import 'package:flutter/material.dart';
import 'package:quizapp2/number_circal.dart';

class QuestionSummry extends StatelessWidget {
  const QuestionSummry(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: summaryData.map(
            (data) {
              return Container(
                margin: const EdgeInsets.only(bottom: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //call NumberCircal class fo color circal as index 
                    NumberCircal(data),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text((data['question'] as String),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                            ),),
                            const SizedBox(
                              height: 1,
                            ),
                            Text((data['currect-answer'] as String),
                            style: const TextStyle(
                              color: Color.fromARGB(255, 38, 215, 255)
                            ),),
                            const SizedBox(
                              height: 1,
                            ),
                            Text((data['user-answer'] as String),
                            style: const TextStyle(
                              color: Color.fromARGB(244, 220, 31, 147)
                            ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
