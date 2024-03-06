import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        centerTitle: true,
        title: Text("Welcome"),
        titleTextStyle: TextStyle(color: Colors.red),
        leading: Icon(Icons.report_gmailerrorred),
        automaticallyImplyLeading: false,//back butonunu sil
        
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.info)),
          CircularProgressIndicator()
        ],
      ),
      body: Column(
        children: [Text("data")],
      ),
    );
  }
}
