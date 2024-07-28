import 'package:flutter/material.dart';

class AnswerButten extends StatelessWidget{
  const AnswerButten({super.key,required this.answer,required this.ontap});

  final String answer;
  final void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 15, 6, 111),
        foregroundColor: Colors.white,
        padding:const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(35))
      ),
      child:Text(answer,textAlign: TextAlign.center,),
    );
    
  }
}