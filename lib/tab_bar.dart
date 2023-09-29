import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:chips_choice/chips_choice.dart';
import 'package:route_test1/second_screen.dart';

class MyTabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(length: 3, child: Scaffold());
  }
}
