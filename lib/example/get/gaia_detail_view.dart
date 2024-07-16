import 'package:flutter/material.dart';
import 'package:flutter_full_learn/example/get/gaia_controller.dart';
import 'package:get/instance_manager.dart';

class GaiaDetailView extends StatelessWidget {
   GaiaDetailView({super.key});
GaiaController gaiaController=Get.find();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Other"),),
      body: Center(child: Text(gaiaController.count.toString()),),
    );
  }
}