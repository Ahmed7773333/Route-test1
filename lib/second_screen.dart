import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'secondscreen'.tr,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
