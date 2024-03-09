import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          FittedBox(child: Text("data",style: TextStyle(fontSize: 404),)),
          Text("data"),
          Text("data"),
          Text("data"),
          Divider(),
          SizedBox(
            height: 250,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [

                        Container(color: Colors.red,width: 20,),
                        Container(color: Colors.black,width: 20,),
                        Container(color: Colors.white,width: 230,),
                        Container(color: Colors.amber,width: 200,),
            
            ],),
          ),
          Text("data"),
          Container(color: Colors.red,height: 388,),
          Container(color: Colors.purple,height: 388,),
        ],
      ),
    );
  }
}