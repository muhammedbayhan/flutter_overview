import 'package:flutter/material.dart';

class ScaffoldLearn extends StatelessWidget {
  const ScaffoldLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //3 ess
      appBar: AppBar(),
      drawer: Drawer(),
      body: const Text("data"),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.abc), label: "asd"),
        BottomNavigationBarItem(icon: Icon(Icons.abc), label: "asd"),
      ]),
      backgroundColor: Colors.purple.shade100,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         showModalBottomSheet(context: context, builder: (context)=>Container(height: MediaQuery.of(context).size.height*0.5,));
        },
        child: Icon(Icons.done),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
