import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/11-image_learn.dart';
import 'package:flutter_full_learn/101/21-list_view_learn.dart';

class NavigatonLearn extends StatefulWidget {
  const NavigatonLearn({super.key});

  @override
  State<NavigatonLearn> createState() => _NavigatonLearnState();
}

class _NavigatonLearnState extends State<NavigatonLearn> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
floatingActionButton: FloatingActionButton(onPressed: (){
  Navigator.of(context).push(MaterialPageRoute(builder: (context){return ListViewLearn();},
  fullscreenDialog: true,
  settings: RouteSettings()
  ));
}),
    );
  }
}