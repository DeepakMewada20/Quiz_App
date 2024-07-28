import 'package:flutter/material.dart';

class NumberCircal extends StatelessWidget {
  final Map<String,Object> questionData;

  const NumberCircal(this.questionData,{super.key});

  @override
  Widget build(BuildContext context) {

    Color indexCircalColor;
    if(questionData['currect-answer']==questionData['user-answer']){
      indexCircalColor =const  Color.fromARGB(255, 38, 215, 255);
    }else{
      indexCircalColor =const Color.fromARGB(244, 220, 31, 147);
    }

    return CircleAvatar(
      radius: 15,
      backgroundColor: indexCircalColor, // You can customize the color here
      child: Text(
        ((questionData['question-index'] as int) + 1).toString(),
        style:const TextStyle(
          color: Colors.black, // You can customize the text color here
          //fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
