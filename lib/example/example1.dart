import 'package:flutter/material.dart';

class Example1 extends StatelessWidget {
  const Example1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Muhammed Bayhan",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            Text(
              "Lorem Ipsum Dolor",
              style: ProjectsTitle.subTitle,
            ),
            Text("Lorem Ipsum" * 15),
            SizedBox(
              height: 20,
            ),
            Text(
              "Lorem Ipsum Dolor",
              style: ProjectsTitle.subTitle,
            ),
            Text("Lorem Ipsum" * 15),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                child: Center(child: Text("Welcome")),
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(colors: [Colors.red, Colors.purple]),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.payment), label: "Payment"),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                  ));
        },
        child: Icon(Icons.done),
      ),
    );
  }
}

class ProjectsTitle {
  static TextStyle get subTitle =>
      TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Colors.blue);
}
