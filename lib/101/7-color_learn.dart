import 'package:flutter/material.dart';

class ColorLearnView extends StatelessWidget {
  const ColorLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Container(color: ColorsItems.lime,child: Text("data"),)
      ],),
    );
  }
}

class ColorsItems {
  static Color amberLight=Color.fromARGB(255, 206, 176, 85);
  static Color lime=Color.fromRGBO(198, 237, 90, 1);
}