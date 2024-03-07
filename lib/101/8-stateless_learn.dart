import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        TitleText(title: "asdsad",),
        TitleText(title: "asdsad1",),
        TitleText(title: "asdsad3",),
 
      ],),
    );
  }
  
}

 class TitleText extends StatelessWidget {
  const TitleText({super.key,required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return  Text(title);
  }
}