import 'package:flutter/material.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        ListTile(
          title: Text("data"),
          subtitle: Text("data"),
          trailing: Icon(Icons.abc),
          leading: Icon(Icons.abc),
          onTap: () => print("asd"),
        ),
      ],),
    );
  }
}