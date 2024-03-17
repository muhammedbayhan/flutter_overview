import 'package:flutter/material.dart';

class Example6 extends StatefulWidget {
  const Example6({super.key});

  @override
  State<Example6> createState() => _Example6State();
}

class _Example6State extends State<Example6> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ExampleColors.ex6Bg,
      appBar: AppBar(backgroundColor: ExampleColors.ex6Bg,),
      body: Column(children: [

      ],),
    );
  }
}


class ExampleColors{
  static Color ex6Bg=Color.fromRGBO(14, 48, 62, 1);
}