import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoutePage extends StatelessWidget {
  final String _path = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Route'),
      ),
      body: Center(
        child: Text(_path),
      ),
    );
  }
}
