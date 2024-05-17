import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/theme/light_theme.dart';
import 'package:flutter_full_learn/303/lottie_view.dart';
import 'package:flutter_full_learn/303/part_of_learn.dart';

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
      theme:LightTheme().theme,
      //  ThemeData.dark().copyWith(
      //   appBarTheme: AppBarTheme(centerTitle: true,)
      // ),
      home:  LottieView(),
    );
  }
}

