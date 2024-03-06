
import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(onPressed: () {}, child: const Text("TextButton")),
          ElevatedButton(onPressed: () {}, child: const Text("ElavatedButton")),
        const  ElevatedButton(onPressed: null, child:  Text("ElavatedButton")), //Null
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.mail)),
          IconButton(onPressed: () {}, icon:const Icon(Icons.done)),
          OutlinedButton(onPressed: () {}, child:const Text("OutlinedButton")),
          InkWell(onTap: () {}, child:const Text("InkWell")), //Paddingsiz
         const Divider(),
          TextButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.green;
                }
                return null;
              })),
              child:const Text("data")),

          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.red, shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero))),
            child: const Text("data"),
          ),
          ElevatedButton(onPressed: (){}, child: const Text("data")),
          ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.abc), label: const Text("data")),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black,shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero))),
            onPressed: (){}, child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
              
              child: Text("See More"),
            ))
        ],
      ),
    );
  }
}
