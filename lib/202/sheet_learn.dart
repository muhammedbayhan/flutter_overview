import 'package:flutter/material.dart';

class SheetLearn extends StatefulWidget {
  const SheetLearn({super.key});

  @override
  State<SheetLearn> createState() => _SheetLearnState();
}

class _SheetLearnState extends State<SheetLearn> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: 
      (){
        showModalBottomSheet(
          backgroundColor: Colors.red,
          isScrollControlled: true,
          barrierColor: Colors.green.withOpacity(0.5),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(
            top: Radius.circular(77),
          )),
          context: context, builder: 
        (context)=>Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text("data"),
               
              ],
            ),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
          ],
        )
        );
      }
      ),
    );
  }
}