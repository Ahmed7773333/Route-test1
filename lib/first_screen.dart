import 'package:flutter/material.dart';
import 'package:get/get.dart';

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'firstscreen'.tr,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
