import 'package:flutter/material.dart';

class RulerPage extends StatelessWidget {
  const RulerPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: web get data
    String rulerId = "null";
    // add to widgets
    // switch () {
    //   case :
        
    //     break;
    //   default:
    // }
    List<Widget> widgets = [];
    // run
    return Scaffold(
      appBar: AppBar(
        title: Text(rulerId),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return widgets[index];
        },
      ),
    );
  }
}
