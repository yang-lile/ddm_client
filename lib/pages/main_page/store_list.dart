import 'package:ddm_client/pages/main_page/ruler_card.dart';
import 'package:flutter/material.dart';

class StoreList extends StatelessWidget {
  const StoreList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return RulerCard();
      },
    );
  }
}
