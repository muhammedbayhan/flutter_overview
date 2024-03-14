import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/3-oop_learn.dart';

class OOPLearnView extends StatefulWidget {
  const OOPLearnView({super.key});

  @override
  State<OOPLearnView> createState() => _OOPLearnViewState();
}

class _OOPLearnViewState extends State<OOPLearnView> {
  FileDownload? _download;
  @override
  void initState() {
    super.initState();
    _download = FileDownload();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {
          _download?.downloadItem(null);
        }),
        body: Center(
          child: DropdownButtonFormField<String>(
            value: 'a1',
            items: const [
              DropdownMenuItem(
                child: Text("data1"),
                value: 'a',
              ),
              DropdownMenuItem(
                child: Text("data2"),
                value: 'a1',
              ),
              DropdownMenuItem(
                child: Text("data3"),
                value: 'a2',
              ),
            ],
            onChanged: (String? value) {},
          ),
        ));
  }
}
