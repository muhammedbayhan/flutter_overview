import 'package:flutter/material.dart';

class StatefulLifeCycleLearn extends StatefulWidget {
  const StatefulLifeCycleLearn({super.key, required this.gender});
  final String gender;

  @override
  State<StatefulLifeCycleLearn> createState() => _StatefulLifeCycleLearnState();
}

class _StatefulLifeCycleLearnState extends State<StatefulLifeCycleLearn> {
  @override
  void initState() {
    super.initState();

    print("initState");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }

  @override
  void didUpdateWidget(covariant StatefulLifeCycleLearn oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: widget.gender=="E"? Colors.blue.shade100:Colors.pink.shade400,
      appBar: AppBar(),
    );
  }
}