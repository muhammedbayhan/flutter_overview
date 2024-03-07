import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/10-card_learn.dart';
import 'package:flutter_full_learn/101/11-image_learn.dart';
import 'package:flutter_full_learn/101/5-app_bar_learn.dart';
import 'package:flutter_full_learn/101/6-icon_learn.dart';
import 'package:flutter_full_learn/101/7-color_learn.dart';
import 'package:flutter_full_learn/101/8-stateless_learn.dart';
import 'package:flutter_full_learn/101/9-padding_learn.dart';
import 'package:flutter_full_learn/example/example1.dart';
import 'package:flutter_full_learn/101/2-container_sized_box_learn.dart';
import 'package:flutter_full_learn/101/3-scaffold_learn.dart';
import 'package:flutter_full_learn/101/1-text_learn_view.dart';
import 'package:flutter_full_learn/example/example2.dart';
import 'package:flutter_full_learn/example/example3.dart';

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
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(centerTitle: true,)
      ),
      home:  Example3(),
    );
  }
}

