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
      appBar: AppBar(backgroundColor: ExampleColors.ex6Bg,
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleIcon(),
        ],
      ),
      title: Text("EXAMPLE 6",style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: ExampleColors.ex6White,fontWeight: FontWeight.bold),),
      centerTitle: true,
      actions: [CircleIcon(),],
      ),
      body: Column(children: [
Card(child: Container(color: ExampleColors.ex6Bg.withOpacity(0.9),),)
      ],),
    );
  }
}

class CircleIcon extends StatelessWidget {
  const CircleIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(child: Icon(Icons.grid_view_rounded));
  }
}


class ExampleColors{
  static Color ex6Bg=Color.fromRGBO(14, 48, 62, 1);
  static Color ex6White=Color.fromRGBO(255, 255, 255, 1);
}