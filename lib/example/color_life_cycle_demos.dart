import 'package:flutter/material.dart';
import 'package:flutter_full_learn/example/colordemos.dart';


class ColorLifeCycleView extends StatefulWidget {
  const ColorLifeCycleView({Key? key}) : super(key: key);

  @override
  State<ColorLifeCycleView> createState() => _ColorLifeCycleViewState();
}

class _ColorLifeCycleViewState extends State<ColorLifeCycleView> {
  Color? _backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: _changeBackgrouind, icon: const Icon(Icons.clear))],
      ),
      body: Column(
        children: [const Spacer(), Expanded(child: ColorDemos(initialColor: _backgroundColor))],
      ),
    );
  }

  void _changeBackgrouind() {
    setState(() {
      _backgroundColor = Colors.pink;
    });
  }
}