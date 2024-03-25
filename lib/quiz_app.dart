import 'package:flutter/material.dart';

void moveNextpage() {}
void main(List<String> args) {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});
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
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/quiz-logo.png',
                    height: 250,
                    width: 250,
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    'Learn Flutter the Fun Way!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(height: 40),
                  OutlinedButton(
                    onPressed: moveNextpage,
                     child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
            
                        Image.asset('assets/images/Untitled.png',width: 30,height: 20,),
                        const SizedBox(width: 12),
                        const Text(
                          'Start Quiz',
                          style: TextStyle(
                            color: Colors.white,
                            // fontSize: 
                          ),
                        )
                        
                      ],
                     ),
                    // Text(
                    //   '-> Start quiz',
                    //   style: TextStyle(
                    //     color: Color.fromARGB(255, 255, 255, 255),
                    //   ),
                    // ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
