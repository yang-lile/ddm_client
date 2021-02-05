import 'package:flutter/material.dart';

class RoutePage extends StatelessWidget {
  const RoutePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Route'),
      ),
      body: Center(
        child: Text('FILES'),
      ),
    );
  }
}
