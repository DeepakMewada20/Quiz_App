import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(226, 58, 8, 129),
                Color.fromARGB(226, 94, 26, 189),
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                //this is the first way to transperent image
                //using og Opacity widget
                Opacity(
                  opacity: 0.3,
                  child: Image.asset(
                    'assets/images/quiz-logo.png',
                    height: 300,
                    width: 300,
                    //help of color widget you can transperet any image.
                  ),
                ),
                //this is the second way to transperent image.
                //using color widget
                Image.asset(
                  'assets/images/quiz-logo.png',
                  height: 300,
                  width: 300,
                  //help of color widget you can transperet any image
                  color: const Color.fromARGB(125, 255, 255, 255),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Quiz',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    //backgroundColor: Color.fromARGB(224, 46, 191, 6),
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
