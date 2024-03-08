import 'package:flutter/material.dart';

class Example4 extends StatefulWidget {
  const Example4({super.key});

  @override
  State<Example4> createState() => _Example4State();
}

class _Example4State extends State<Example4> {

  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(currentIndex.toString()),
      ),
      body: PageView(
        onPageChanged: (value) {
          setState(() {

currentIndex=value;

          });
        },
        children: [
          Container(
            color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                buildCounter: (context, {required currentLength, required isFocused, required maxLength}) {
                 print("asd"*currentLength);
                },
                decoration: InputDecoration(border: OutlineInputBorder()),
                
              ),
            ),
          ),
          Container(
            color: Colors.pink,
          ),
          Container(
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
