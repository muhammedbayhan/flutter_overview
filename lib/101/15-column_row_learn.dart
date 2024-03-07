import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return 
     Scaffold(
      appBar: AppBar(),
      body:Column(
        children: [
Expanded(child: Container(color: const Color.fromARGB(255, 186, 128, 196),)),
Expanded(child: Container(color: Colors.purple,)),
Expanded(child: Container(color: const Color.fromARGB(255, 83, 60, 86),)),
Expanded(child: Container(color: const Color.fromARGB(255, 23, 11, 25),)),


        ],
      ) ,
    );
  }
}