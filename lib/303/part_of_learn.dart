import 'package:flutter/material.dart';
part './part_of_appbar.dart';
//partOf iki private dosyayı birbiri ile konuşturmaya yarar
class PartOfLearn extends StatelessWidget {
  const PartOfLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _PartOfAppbar(),
    );
  }
}
