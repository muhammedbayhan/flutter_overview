import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Example5 extends StatefulWidget {
  const Example5({super.key});

  @override
  State<Example5> createState() => _Example5State();
}

class _Example5State extends State<Example5> {
  String name = "Muhammed";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Example5Colors.bgColor,
      body: SafeArea(
        child: Padding(
          padding: Example5Paddings.pagePadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${Strings.welcome} $name"),
                      Text("${Strings.hp1} $name"),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.circle),
                  Icon(Icons.circle),
                ],
              ),
              SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) => StatusCard(),
                ),
              ),
              SeparatedLabel(),
              Expanded(child: ContentCard()),
              SeparatedLabel(),
              Expanded(child: ContentCard()),
             
            ],
          ),
        ),
      ),
    );
  }
}

class ContentCard extends StatelessWidget {
  const ContentCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(color: Example5Colors.cardColor,child: Container(),);
  }
}

class SeparatedLabel extends StatelessWidget {
  const SeparatedLabel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Text(Strings.myProgram,style: Theme.of(context)
        .textTheme
        .headlineSmall!
        .copyWith(fontWeight: FontWeight.w600),),
      Text(Strings.seeAll,style: Theme.of(context)
        .textTheme
        .bodyLarge!
        .copyWith(fontWeight: FontWeight.w600,color: Example5Colors.primary),),
    ],);
  }
}

class StatusCard extends StatelessWidget {
  const StatusCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Example5Colors.cardColor,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.27,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.circle,size: MediaQuery.of(context).size.height*0.05,),
            Text(
              "1565",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
            Text(
              "asdsad",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}

class Strings {
  static String welcome = "Hi,";
  static String hp1 = "Happy workout!";
  static String heartBeat = "Heartbeat!";
  static String minutes = "Minutes";
  static String myProgram = "My Program";
  static String seeAll = "See All";
  static String categories = "Categories";
}

class Example5Colors {
  static Color bgColor = Color.fromRGBO(28, 33, 38, 1);
  static Color cardColor = Color.fromRGBO(51, 55, 60, 1);
  static Color primary = Color.fromRGBO(224, 254, 16, 1);
}

class Example5Paddings {
  static EdgeInsets pagePadding = const EdgeInsets.all(24);
}
