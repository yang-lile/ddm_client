import 'package:ddm_client/controllers/main_page/page_state_controller.dart';
import 'package:ddm_client/generated/meta_data.pbgrpc.dart';

import 'package:ddm_client/pages/main_page/ruler_card.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class StoreList extends StatelessWidget {
  const StoreList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final unit8List = Hive.box<String>('rulers').values.toList();
    List<Ruler> rulers = [];
    unit8List.forEach((element) {
      rulers.add(Ruler.fromJson(element));
    });
    return ListView.builder(
      itemCount: rulers.length,
      itemBuilder: (context, index) {
        final item = rulers[index];
        return RulerCard(
          ruler: item,
          pageState: FuntionPages.Store,
        );
      },
    );
  }
}
