import 'package:flutter/material.dart';
import 'package:flutter_full_learn/example/get/gaia_view.dart';
import 'package:flutter_full_learn/example/get/localization_messages.dart';

import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //cupertino--> ios
      translations: LocalizationMessages(), // your translations
    locale: Get.deviceLocale,

      fallbackLocale: Locale('en',
          'UK'), // specify the fallback locale in case an invalid locale is selected.

      title: 'Flutter Demo', // desc title
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          centerTitle: true,
        ),
      ),

      home: GaiaView(),
    );
  }
}
