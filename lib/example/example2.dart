import 'package:flutter/material.dart';

class Example2 extends StatelessWidget {
  const Example2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Activites Today"),
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.notification_important_outlined))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
              InfoCard(),
              InfoCard(),
    ],),
        Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
             TodoCard(),
             TodoCard(),
    ],),
    Container(
    decoration: BoxDecoration(
      color: Ex2ProjectsColors.lightPurple,
      borderRadius: BorderRadius.all(Radius.circular(5)),
    ),
    height: MediaQuery.of(context).size.height * 0.2,
    width: MediaQuery.of(context).size.width * 0.82,
                )
            
          ],
        ),
      ),
      bottomNavigationBar:
          BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.list), label: ""),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50))),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class TodoCard extends StatelessWidget {
  const TodoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(
      color: Ex2ProjectsColors.lightYellow,
      borderRadius: BorderRadius.all(Radius.circular(5)),
    ),
    height: MediaQuery.of(context).size.height * 0.2,
    width: MediaQuery.of(context).size.width * 0.4,
                );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(
      color: Ex2ProjectsColors.lightGrey,
      borderRadius: BorderRadius.all(Radius.circular(5)),
    ),
    height: MediaQuery.of(context).size.height * 0.15,
    width: MediaQuery.of(context).size.width * 0.4,
                );
  }
}

class Ex2ProjectsColors {
  static Color lightPurple = Color.fromRGBO(187, 183, 244, 1);
  static Color lightYellow = Color.fromRGBO(248, 244, 133, 1);
  static Color lightGrey = Color.fromRGBO(247, 244, 255, 1);
}
