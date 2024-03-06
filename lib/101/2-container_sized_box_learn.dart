import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Text('a' * 500),
          ),
          const SizedBox.shrink(), //Boş component
          SizedBox.square(
            dimension: 100,
            child: Text("a" * 70),
          ),

          Container(
            width: 50,
            height: 50,
            constraints:
                BoxConstraints(maxWidth: 100, minWidth: 50), //otomotik scale
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(50),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.red,Colors.purple]),
                boxShadow: [
                  BoxShadow(color: Colors.green, offset: Offset(0.1, 1))
                ],
                color: Colors.red,
                shape: BoxShape.circle,
                border: Border.all(width: 10, color: Colors.white)),
            child: Text("a" * 50),
          ),
        ],
      ),
    );
  }
}
