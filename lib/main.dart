import 'package:flutter/material.dart';
import 'package:flutter_full_learn/example/example1.dart';
import 'package:flutter_full_learn/101/2-container_sized_box_learn.dart';
import 'package:flutter_full_learn/101/3-scaffold_learn.dart';
import 'package:flutter_full_learn/101/1-text_learn_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //cupertino--> ios

      title: 'Flutter Demo',// desc title
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home:  Example1(),
    );
  }
}

