import 'package:ddm_client/generated/meta_data/meta_data.pbgrpc.dart';
import 'package:flutter/material.dart';

class RulerPage extends StatelessWidget {
  final Ruler ruler;
  const RulerPage({
    Key key,
    this.ruler,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${ruler.rulerId.source}/${ruler.rulerId.ruleName}"),
      ),
      body: Text(
        "${ruler.instruction}",
      ),
    );
  }
}
