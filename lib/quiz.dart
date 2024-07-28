import 'package:flutter/material.dart';
import 'package:quizapp2/data/question.dart';
import 'package:quizapp2/question_screen.dart';
import 'package:quizapp2/start_screen.dart';
import 'package:quizapp2/result_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key}); 
  @override
  State<Quiz> createState(){
    return _QuizState();
  }

}

class _QuizState extends State<Quiz>{
  
  var achtiveScreen='start-screen';

  List<String> selectAnswer=[];

  // @override
  // void initState() {
  //   achtiveScreen=StartScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen(){
    setState(() {
      achtiveScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer){
    selectAnswer.add(answer);
    if(selectAnswer.length==question.length){
      setState(() {
        achtiveScreen='result-screen';
      });
    }
  }
  
  void restartQuiz(){
    setState(() {
      achtiveScreen='question-screen';
      selectAnswer=[];
    });
  }

  @override
  Widget build(context) {

    Widget screenWidget = StartScreen(switchScreen);

    if(achtiveScreen=='question-screen'){
       screenWidget=QuestionScreen(onselectAnswer: chooseAnswer);
    }
    if(achtiveScreen=='result-screen'){
      screenWidget=ResultScreen(chooseAnswer: selectAnswer,restartQuiz: restartQuiz);
    }
    

    return  MaterialApp(
      home: Scaffold(
        body: Container(
          decoration:const  BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 68, 24, 145),
                Color.fromARGB(255, 78, 30, 123),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child:screenWidget,
          ),
      ),
    );
  }
}