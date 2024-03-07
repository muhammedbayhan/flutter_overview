import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Stack(children: [
Container(color: Colors.red,height: 100,),
Padding(
  padding: const EdgeInsets.all(8.0),
  child: Container(color: Colors.blue,height: 100,),
  
),
Positioned(
  right: 5,
  left: 0,
  top: 50,
  child: Container(color: Colors.purple,height: 100,)),

      ],),
    );
  }
}