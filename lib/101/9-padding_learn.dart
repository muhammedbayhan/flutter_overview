import 'package:flutter/material.dart';

class PaddingLearnView extends StatelessWidget {
  const PaddingLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding.pagePaddingVertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: Colors.white,height: 100,width: 200,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child: Container(color: Colors.white,height: 100,width: 200,),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:8.0),
            child: Container(color: Colors.white,height: 100,width: 200,),
          ),
          Container(color: Colors.white,height: 100,width: 200,),
        ],),
      ),
    );
  }
}


class ProjectPadding {
  static final pagePaddingVertical=const EdgeInsets.symmetric(vertical: 10,horizontal: 30);
}