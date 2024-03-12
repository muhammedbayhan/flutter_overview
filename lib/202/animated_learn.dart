import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnimatedLearn extends StatefulWidget {
  const AnimatedLearn({super.key});

  @override
  State<AnimatedLearn> createState() => _AnimatedLearnState();
}

class _AnimatedLearnState extends State<AnimatedLearn> {
  bool isVisible = false;
  int size=500;
  void changeVisible() {
    setState(() {});
    isVisible = !isVisible;
  }

void changeSize(BuildContext context){
setState(() {

  if (size<50) {
    size=500;
  }
    size=size-(50);
});
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {
          changeSize(context);
        }),
        appBar: AppBar(),
        body: Column(
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 500),
              height: size.toDouble(),
              width: size.toDouble(),
              color: size<250?Colors.red:Colors.purple,
            )
          ],
        ));
  }
}

class _TextStyleAnimated extends StatelessWidget {
  const _TextStyleAnimated({
    super.key,
    required this.isVisible,
  });

  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return AnimatedDefaultTextStyle(
        child: Text("data"),
        style: isVisible
            ? TextStyle(fontSize: 200, color: Colors.red)
            : TextStyle(fontSize: 0, color: Colors.black),
        duration: Duration(milliseconds: 4500));
  }
}

class Opacity extends StatelessWidget {
  const Opacity({
    super.key,
    required this.isVisible,
  });

  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: Duration(milliseconds: 500),
      opacity: isVisible ? 1 : 0,
      child: ListTile(
        title: Text("data"),
        trailing: IconButton(onPressed: () {}, icon: Icon(Icons.abc)),
      ),
    );
  }
}

class TWOcrossFade extends StatelessWidget {
  const TWOcrossFade({
    super.key,
    required this.isVisible,
  });

  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
        firstChild: Container(
          color: Colors.purple,
          height: 250,
          width: 250,
        ),
        secondChild: Container(
          color: Colors.red,
          height: 500,
          width: 500,
        ),
        crossFadeState:
            isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        duration: Duration(milliseconds: 50));
  }
}
