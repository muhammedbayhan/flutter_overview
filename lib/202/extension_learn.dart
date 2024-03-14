import 'package:flutter/material.dart';

class ExtensionLearnView extends StatefulWidget {
  const ExtensionLearnView({super.key});

  @override
  State<ExtensionLearnView> createState() => _ExtensionLearnViewState();
}

class _ExtensionLearnViewState extends State<ExtensionLearnView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(children: [
Image.asset(ImagePaths.bg.path()),
Text(ImagePaths.bankLogo.specificString()),
ImagePaths.bankLogo.ImageM(),
      ],),
    );
  }
}

enum ImagePaths{
  bankLogo,bg,bg2
}


extension ImagePathsExtension on ImagePaths{
  String path(){
    return 'assets/$name.png';
  }
  String specificString(){
    return '--> $name --<';
  }

  Widget ImageM(){
    return Image.asset(path(),height: 50,width: 50,);
  }


}