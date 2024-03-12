import 'package:flutter/material.dart';

class ImageLearnView extends StatefulWidget {
  const ImageLearnView({super.key});

  @override
  State<ImageLearnView> createState() => _ImageLearnViewState();
}

class _ImageLearnViewState extends State<ImageLearnView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Image.asset(ImagePath.bg.path()),

      ],),
      
    );
  }
}

enum ImagePath {
  bg
}

extension ImagePathExtension on ImagePath{
  String path(){
    return 'assets/$name.png';
  }
}