import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/language/language_items.dart';

class StateFulLearn extends StatefulWidget {
  const StateFulLearn({super.key});

  @override
  State<StateFulLearn> createState() => _StateFulLearnState();
}

class _StateFulLearnState extends State<StateFulLearn> {
  int value=0;
  void increment(){
    setState(() {
      value++;
    });
  }
  void deIncrement(){
    setState(() {
      value--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(LanguageItems.counterTitle),),
      body: Center(child: Text(value.toString(),style: Theme.of(context).textTheme.displayLarge,),),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: FloatingActionButton(onPressed: increment,child: Icon(Icons.add),),
        ),
        FloatingActionButton(onPressed: deIncrement,child: Icon(Icons.remove),),
      ],)
    );
  }
}