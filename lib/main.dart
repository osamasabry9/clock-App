import 'package:alarm/controller/binfi.dart';
import 'package:alarm/utils/theme.dart';
import 'package:alarm/view/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'controller/service.dart';

void main() async { // make it async
  await GetStorage.init(); // add this
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeService().theme,
      initialBinding: MyBinding(),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}