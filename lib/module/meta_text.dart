import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MetaText extends StatelessWidget {
  final String? value;
  const MetaText({Key? key, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      value!,
      style: Get.textTheme.headline1,
    );
  }
}
