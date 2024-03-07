import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Card(
          margin: EdgeInsets.all(10),
          color: Colors.white,
          child: SizedBox.square(dimension: 200,),
          shape: StadiumBorder(),
        ),
         Card(
          color: Colors.amber,
          child: SizedBox.square(dimension: 200,),
        ),
      ],),
    );
  }
}