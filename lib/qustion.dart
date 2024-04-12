import 'package:flutter/material.dart';
class QustionScreen extends StatefulWidget{
  const QustionScreen({super.key});

  @override
  State<QustionScreen> createState(){
    return _QustionState();
  }
}

class _QustionState extends State<QustionScreen>{
  @override
  Widget build(context){
    return const Text('Qustion!');
  }
}