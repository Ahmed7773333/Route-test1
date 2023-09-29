import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route_test1/gets/local.dart';

import 'app_theme.dart';
import 'tab_bar.dart';

void main(List<String> args) {
  runApp(const RouteTest());
}

class RouteTest extends StatelessWidget {
  const RouteTest({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: const Locale('ar'),
      translations: AppLocal(),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: MyTabBarDemo(),
      getPages: [],
    );
  }
}
