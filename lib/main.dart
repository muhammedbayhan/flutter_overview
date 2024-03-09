import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/10-card_learn.dart';
import 'package:flutter_full_learn/101/11-image_learn.dart';
import 'package:flutter_full_learn/101/13-indicator_learn.dart';
import 'package:flutter_full_learn/101/14-list_tile_learn.dart';
import 'package:flutter_full_learn/101/16-stack_learn.dart';
import 'package:flutter_full_learn/101/18-page_view.dart';
import 'package:flutter_full_learn/101/19-stateful_life_cycle.dart';
import 'package:flutter_full_learn/101/20-textfield_learn.dart';
import 'package:flutter_full_learn/101/21-list_view_learn.dart';
import 'package:flutter_full_learn/101/5-app_bar_learn.dart';
import 'package:flutter_full_learn/101/6-icon_learn.dart';
import 'package:flutter_full_learn/101/7-color_learn.dart';
import 'package:flutter_full_learn/101/8-stateless_learn.dart';
import 'package:flutter_full_learn/101/9-padding_learn.dart';
import 'package:flutter_full_learn/101/12-custom_widget_learn.dart';
import 'package:flutter_full_learn/101/15-column_row_learn.dart';
import 'package:flutter_full_learn/101/17-stateful_learn.dart';
import 'package:flutter_full_learn/example/color_life_cycle_demos.dart';
import 'package:flutter_full_learn/example/colordemos.dart';
import 'package:flutter_full_learn/example/example1.dart';
import 'package:flutter_full_learn/101/2-container_sized_box_learn.dart';
import 'package:flutter_full_learn/101/3-scaffold_learn.dart';
import 'package:flutter_full_learn/101/1-text_learn_view.dart';
import 'package:flutter_full_learn/example/example2.dart';
import 'package:flutter_full_learn/example/example3.dart';
import 'package:flutter_full_learn/example/example4.dart';

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
      home:  ListViewLearn(),
    );
  }
}

