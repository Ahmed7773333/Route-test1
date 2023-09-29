import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Third extends StatelessWidget {
  const Third({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'thirdscreen'.tr,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
