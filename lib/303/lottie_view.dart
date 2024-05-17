import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieView extends StatefulWidget {
  const LottieView({super.key});

  @override
  State<LottieView> createState() => _LottieViewState();
}

class _LottieViewState extends State<LottieView> with TickerProviderStateMixin {
  late AnimationController controller;
  @override
  void initState() {
    super.initState();
controller=AnimationController(vsync: this,duration: Duration(milliseconds:250 ));
  }
  bool isLight=false;

  changeLight(){
    setState(() {
       controller.animateTo(isLight ? 0:1);
                      isLight=!isLight;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: isLight? Colors.white:Colors.black,
        title: Text("data"),actions: [
          GestureDetector(
                child: Lottie.network(
                    "https://lottie.host/113c9254-746c-460f-9313-632b8e9414a4/V5wZqTTIqF.json",
                    repeat: false,
                    controller: controller,      
                    ),
                    onTap: (){
                     changeLight();
                    },),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Expanded(child: Container(color: isLight? Colors.white:Colors.black,))
        ],
      ),
    );
  }
}
