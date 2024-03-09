import 'package:flutter/material.dart';

class ListViewBuilderLearn extends StatefulWidget {
  const ListViewBuilderLearn({super.key});

  @override
  State<ListViewBuilderLearn> createState() => _ListViewBuilderLearnState();
}

class _ListViewBuilderLearnState extends State<ListViewBuilderLearn> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        separatorBuilder: (context, index) => Container(child: Divider(color: Colors.white,thickness: 5,)),
        itemCount: 15,
        itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.all(32),
          child: Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
                ),
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/bankLogo.png'), 
            ),
            SizedBox(height: 10),
            Text(
              'test',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'test',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
                )),
        );
      }),
    );
  }
}