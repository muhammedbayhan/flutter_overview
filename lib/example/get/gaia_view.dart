import 'package:flutter/material.dart';
import 'package:flutter_full_learn/example/get/gaia_controller.dart';
import 'package:flutter_full_learn/example/get/gaia_detail_view.dart';
import 'package:get/get.dart';

class GaiaView extends StatelessWidget {
  GaiaView({super.key});
  final GaiaController gaiaController = Get.put(GaiaController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          GetPlatform.isIOS?
          FloatingActionButton(
            onPressed: () {
              Get.updateLocale(Locale('tr', 'TR'));
              Get.changeTheme(ThemeData.light());
            },
            child: Text("TR"),
          ):Text("data"),
          FloatingActionButton(
            onPressed: () {
              Get.updateLocale(Locale('en', 'US'));
              Get.changeTheme(ThemeData.dark());
            },
            child: Text("ENG"),
          ),
          FloatingActionButton(
            onPressed: () {
              gaiaController.increment();
            },
            child: Text("+"),
          ),
        ],
      ),
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("hello".tr),
          Center(
            child: Obx(() => Text(gaiaController.count.toString())),
          ),
          ElevatedButton(
              onPressed: () {
                Get.to(() => GaiaDetailView());
              },
              child: Text("-->"))
        ],
      ),
    );
  }
}
