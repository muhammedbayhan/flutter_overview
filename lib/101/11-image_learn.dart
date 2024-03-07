import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        SizedBox(
          height: 400,
          width: 300,
          child: Image.asset("assets/bg2.png")),

          Image.network("https://static.vecteezy.com/system/resources/previews/020/968/356/non_2x/search-and-find-people-free-png.png",
          errorBuilder: (context, error, stackTrace) => const Icon(Icons.abc),)
      ],),


    );
  }
}